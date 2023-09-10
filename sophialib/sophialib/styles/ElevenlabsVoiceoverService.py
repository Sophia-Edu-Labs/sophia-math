# BASED ON: https://github.com/ManimCommunity/manim-voiceover/blob/main/manim_voiceover/services/coqui.py



import datetime
import os
from pathlib import Path
import sys
from typing import Iterator, Optional, Union
from dotenv import load_dotenv, find_dotenv
from manim_voiceover.helper import (
    create_dotenv_file,
    prompt_ask_missing_extras,
    remove_bookmarks,
    wav2mp3,
    prompt_ask_missing_package
)
from manim import logger
import json

from multiprocessing import Semaphore

# base speech services stuff
from manim_voiceover.services.base import SpeechService
from sophialib.utils.xml import remove_xml_tags

load_dotenv(find_dotenv(usecwd=True))

# Elevenlabs setup
try:
    from elevenlabs import generate, set_api_key, get_api_key
    from elevenlabs.api import Models, Voices, User, History, HistoryItem
except ImportError:
    logger.error("Missing packages. Run `pip install elevenlabs` to use Elevenlabs service.")


# DEFAULT_MODEL = "eleven_multilingual_v1"
# DEFAULT_MODEL = "eleven_multilingual_v2"
DEFAULT_MODEL = "eleven_english_v2"



# Define the semaphore that will be used to limit the number of parallel requests to the elevenlabs api
parallel_request_sem = Semaphore(3)


class ElevenlabsVoiceoverService(SpeechService):
    """Speech service for Elevenlabs TTS.
    Default model: ``eleven_multilingual_v1``.
    """

    def __init__(
        self,
        model_id: str = DEFAULT_MODEL,
        voice_name: str = "Bella",
        should_use_history: bool = True,
        **kwargs,
    ):
        # Set env has not ELEVENLABS_API_KEY, throw an error
        if not get_api_key():
            api_key = os.getenv("ELEVENLABS_API_KEY")
            if not api_key:
                raise ValueError(
                    "ELEVENLABS_API_KEY not found. Please set it in your environment variables (i.e. in your .env file)."
                )
            set_api_key(api_key)

        # save if we should use history
        self.should_use_history = should_use_history

        # save model id
        self.model_id = model_id

        # get all model ids
        self.models = Models.from_api()
        # make sure the given model name is in the models list, otherwise throw an exception
        if model_id not in [ m.model_id for m in self.models]:
            raise ValueError(f"Model id {model_id} not found in models list gotten from elevenlabs api!")

        # get all voices
        self.voices = Voices.from_api()

        # Make sure the given voice name is in the voices list, otherwise throw an exception
        if voice_name not in [ v.name for v in self.voices]:
            raise ValueError(f"Voice name {voice_name} not found in voices list gotten from elevenlabs api!")
        self.voice_name = voice_name

        # get current elevenlabs user
        self.user = User.from_api()

        # default manim voiceover stuff
        self.init_kwargs = kwargs
        prompt_ask_missing_package("elevenlabs", "elevenlabs>=0.2.24")
        
        # set openai-whisper transcription model (currently use base model)
        SpeechService.__init__(self, transcription_model = "base", **kwargs,)
    
    def get_audio_from_history(self, text: str, max_days: int = 7) -> Optional[Union[bytes, Iterator[bytes]]]:
        # compute the datetime, max_days days ago from now
        max_days_ago = datetime.datetime.now() - datetime.timedelta(days=max_days)

        # get the history from the api
        history = History.from_api()
        
        # iterate over all history items and break if the text was found or the item is older than max_days_ago (if iteration is finished before, try to request more pages)
        for item in history: # when iterating over history, the elevenlabs api will automatically retrieve the pages
            if item.text == text:
                # get the audio bytes from the history item
                return item.audio
            elif item.date < max_days_ago:
                return None
        


    @property
    def _user_character_limit_per_request(self):
        return 2500 if self.user.subscription.status == "free" else 5000

    def generate_from_text(
        self, text: str, cache_dir: str = None, path: str = None, **kwargs
    ) -> dict:
        if cache_dir is None:
            cache_dir = self.cache_dir

        # text preprocessing
        input_text = remove_bookmarks(text)
        input_text = remove_xml_tags(input_text)
        input_text = "\n".join([line.strip() for line in input_text.split("\n")]) # remove all leading and trailing whitespaces from every line


        # make sure the input is no longer than allowed character limit
        if len(input_text) > self._user_character_limit_per_request:
            raise ValueError(
                f"Text input is too long. The maximum number of characters is {self._user_character_limit_per_request}."
            ) 
        
        input_data = {"input_text": text, "service": "elevenlabs"}

        cached_result = self.get_cached_result(input_data, cache_dir)
        if cached_result is not None:
            return cached_result

        if path is None:
            audio_path = self.get_audio_basename(input_data) + ".mp3"
        else:
            audio_path = path

        if not kwargs:
            kwargs = self.init_kwargs

        output_path = str(Path(cache_dir) / audio_path)
        
        with parallel_request_sem:
            audio_bytes = None
            # get audio bytes from history if possible
            if self.should_use_history:
                audio_bytes = self.get_audio_from_history(input_text)
            
            if audio_bytes is None:
                # should be audio bytes in mp3 format
                audio_bytes = generate(
                    text=input_text,
                    voice=self.voice_name,
                    model=self.model_id,
                    stream=False,
                )

        # save audio bytes to file
        with open(output_path, "wb") as f:
            f.write(audio_bytes)
        

        json_dict = {
            "input_text": text,
            "input_data": input_data,
            "original_audio": audio_path,
            # "word_boundaries": word_boundaries,
        }

        return json_dict
