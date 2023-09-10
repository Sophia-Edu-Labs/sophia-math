# BASED ON: https://github.com/ManimCommunity/manim-voiceover/blob/main/manim_voiceover/services/azure.py



import os
from pathlib import Path
import sys
from dotenv import load_dotenv, find_dotenv
from manim_voiceover.helper import (
    create_dotenv_file,
    prompt_ask_missing_extras,
    remove_bookmarks,
)
from manim import logger
import json


# import AWS API stuff
from boto3 import Session
from botocore.exceptions import BotoCoreError, ClientError
from contextlib import closing

# base speech services stuff
from manim_voiceover.services.base import SpeechService

# load_dotenv(find_dotenv(usecwd=True))

def byte_index_to_char_index(byte_index, input_string):
    """
    Convert a byte index in a string to the corresponding character index.

    Args:
    byte_index (int): The byte index to convert.
    string (str): The string to convert the byte index for.

    Returns:
    int: The corresponding character index in the string.
    """
    encoded_s = input_string.encode()
    
    # Use the decode() method to convert the bytes back to a string,
    # then slice up to the number of characters in the original string.
    # Finally, use the len() function to get the number of characters
    # in the slice.
    num_chars = len((encoded_s[:byte_index]).decode())
    
    # Return the number of characters.
    return num_chars

def serialize_word_boundary(wb):
    return {
        "audio_offset": int(wb["audio_offset"]),
        "duration_milliseconds": int(wb["duration_milliseconds"]),
        "text_offset": wb["text_offset"],
        "word_length": wb["word_length"],
        "text": wb["text"],
        "boundary_type": wb["boundary_type"],
    }



class AWSPollyService(SpeechService):
    """Speech service for AWS Polly TTS API."""

    def __init__(
        self,
        voice: str = "Vicki",
        output_format: str = "Audio48Khz192KBitRateMonoMp3",
        prosody: dict = None,
        **kwargs,
    ):
        """
        Args:
            voice (str, optional): The voice to use. See the `API page <https://learn.microsoft.com/en-us/azure/cognitive-services/speech-service/language-support?tabs=stt-tts>`__ for all the available options. Defaults to ``en-US-AriaNeural``.
            output_format (str, optional): The output format to use. See the `API page <https://learn.microsoft.com/en-us/azure/cognitive-services/speech-service/rest-text-to-speech?tabs=streaming#audio-outputs>`__ for all the available options. Defaults to ``Audio48Khz192KBitRateMonoMp3``.
            prosody (dict, optional): Global prosody settings to use. See the `API page <https://learn.microsoft.com/en-us/azure/cognitive-services/speech-service/speech-synthesis-markup#adjust-prosody>`__ for all the available options. Defaults to None.
        """
        # prompt_ask_missing_extras(
        #     "azure.cognitiveservices.speech", "azure", "AzureService"
        # )

        self.voice = voice
        self.output_format = output_format
        self.prosody = prosody
        SpeechService.__init__(self, **kwargs)

    def generate_from_text(
        self, text: str, cache_dir: str = None, path: str = None, **kwargs
    ) -> dict:
        """"""
        # Remove bookmarks
        pure_text = remove_bookmarks(text)
        inner = pure_text
        if cache_dir is None:
            cache_dir = self.cache_dir

        # Apply prosody
        prosody = kwargs.get("prosody", self.prosody)

        if prosody is not None:
            if not isinstance(prosody, dict):
                raise ValueError(
                    "The prosody argument must be a dict that contains at least one of the following keys: 'pitch', 'contour', 'range', 'rate', 'volume'."
                )

            opening_tag = (
                "<prosody "
                + " ".join(
                    ['%s="%s"' % (key, str(val)) for key, val in prosody.items()]
                )
                + ">"
            )
            inner = opening_tag + inner + "</prosody>"

        ssml = r"""<speak version="1.1" 
            xmlns="http://www.w3.org/2001/10/synthesis"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
            xsi:schemaLocation="http://www.w3.org/2001/10/synthesis http://www.w3.org/TR/speech-synthesis11/synthesis.xsd"
            xml:lang="de-DE">
            %s
        </speak>
        """ % (
            inner,
        )

        input_data = {
            "input_text": text,
            "ssml": ssml,
            "service": "azure",
            "config": {
                "voice": self.voice,
                "output_format": self.output_format,
                "prosody": self.prosody,
            },
        }

        cached_result = self.get_cached_result(input_data, cache_dir)
        if cached_result is not None:
            return cached_result

        if path is None:
            audio_path = self.get_audio_basename(input_data) + ".mp3"
        else:
            audio_path = path
            
        audio_path_filename=str(Path(cache_dir) / audio_path)
        

        ########## AWS Stuff ##########
        # Create a client using the credentials and region defined in the [default]
        # section of the AWS credentials file (~/.aws/credentials).
        session = Session()
        polly = session.client("polly")

        try:
            engine = "neural"
            language_code = "de-DE"
            text_type = "ssml"
            voice_id=self.voice

            # Request speech synthesis
            audio_response = polly.synthesize_speech(
                Engine=engine,
                LanguageCode=language_code,
                OutputFormat='mp3',
                Text=ssml,
                TextType=text_type,
                VoiceId=voice_id
            )

            speechmark_response = polly.synthesize_speech(
                Engine=engine,
                LanguageCode=language_code,
                OutputFormat='json',
                SpeechMarkTypes=['word'],
                Text=ssml,
                TextType=text_type,
                VoiceId=voice_id
            )

        except (BotoCoreError, ClientError) as error:
            # The service returned an error, exit gracefully
            print(error)
            sys.exit(-1)


         # Access the speech mark stream from the response
        if "AudioStream" in speechmark_response:
            # Note: Closing the stream is important because the service throttles on the
            # number of parallel connections. Here we are using contextlib.closing to
            # ensure the close method of the stream object will be called automatically
            # at the end of the with statement's scope.
            with closing(speechmark_response["AudioStream"]) as stream:
                speechmark_data: str = stream.read().decode('utf-8')
                speechmarks = [json.loads(l) for l in speechmark_data.split("\n") if len(l) > 0]
                
                # parse speechmark into word boundaries (it should basically be different names for the same concept, just different syntax)
                last_audio_offset = 0
                def process_speechmark(evt):
                    nonlocal last_audio_offset #https://stackoverflow.com/a/8178808

                    # see here for documentation
                    # https://docs.aws.amazon.com/polly/latest/dg/using-speechmarks.html
                    # and to compare with the above linked "azure reference implementation", see: https://learn.microsoft.com/en-us/dotnet/api/microsoft.cognitiveservices.speech.speechsynthesiswordboundaryeventargs?view=azure-dotnet
                    result = {}

                    # duration
                    result["duration_milliseconds"] = evt["time"] - last_audio_offset # this way we can compute the duration

                    # audio offset (should be in 100ns)
                    result["audio_offset"] = evt["time"] * 1e+6 / 100 # time is in milliseconds -> convert to nanoseconds -> then make it in 100ns ticks
                    
                    # text
                    result["text"] = evt["value"]

                    # boundary type (is static here)
                    result["boundary_type"] = "Word"

                    # word length
                    word_length = len(evt["value"])
                    result["word_length"] = word_length #evt["end"] - evt["start"] 

                    # text offset
                    first_word_offset_in_ssml = speechmarks[0]["start"]
                    result["text_offset"] = byte_index_to_char_index(evt["start"], ssml) - byte_index_to_char_index(first_word_offset_in_ssml, ssml) #everything relative to first word
                    
                    # update counter variables…
                    last_audio_offset=evt["time"]

                    return result
                
                word_boundaries = [process_speechmark(sm) for sm in speechmarks]

        else:
            # The response didn't contain speech mark data, exit gracefully
            print("Could not stream speech marks")
            sys.exit(-1)

        # Access the audio stream from the response
        if "AudioStream" in audio_response:
            # Note: Closing the stream is important because the service throttles on the
            # number of parallel connections. Here we are using contextlib.closing to
            # ensure the close method of the stream object will be called automatically
            # at the end of the with statement's scope.
                with closing(audio_response["AudioStream"]) as stream:
                    try:
                        # Open a file for writing the output as a binary stream
                        with open(audio_path_filename, "wb") as file:
                            file.write(stream.read())

                        json_dict = {
                            "input_text": text,
                            "input_data": input_data,
                            "ssml": ssml,
                            "word_boundaries": [serialize_word_boundary(wb) for wb in word_boundaries],
                            "original_audio": audio_path,
                        }

                        return json_dict
                    except IOError as error:
                        # Could not write to file, exit gracefully
                        print(error)
                        sys.exit(-1)

        else:
            # The response didn't contain audio data, exit gracefully
            print("Could not stream audio")
            sys.exit(-1)