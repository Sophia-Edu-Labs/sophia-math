# Helper function to remove all kind of xml-like tags from text (as elevenlabs api does not support ssml, we need to remove all ssml-like tags)
import re


def remove_xml_tags(text):
    # remove all tags
    text = re.sub(r"<[^>]*>", "", text)
    # remove all xml-like tags
    text = re.sub(r"&lt;[^>]*&gt;", "", text)
    return text