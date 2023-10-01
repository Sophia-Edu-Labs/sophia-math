# Helper function to remove all kind of xml-like tags from text (as elevenlabs api does not support ssml, we need to remove all ssml-like tags)
import re


def remove_xml_tags(text, exclude_tags=[]):
    """
    This function removes all xml tags from a string, except for those listed in exclude_tags.
    :param text: str, input string containing xml tags
    :param exclude_tags: list of str, optional, tags to be excluded from removal
    :return: str, the input string with xml tags removed (except those in exclude_tags)
    """
    
    # Prepare the list of excluded tags in regex pattern format
    excluded = '|'.join(f'{tag}' for tag in exclude_tags)
    
    # If there are tags to be excluded, adjust the regex pattern accordingly
    if excluded:
        pattern = fr"<(?!/?({excluded})\b)[^>]*>"
        entity_pattern = fr"&lt;(?!/?({excluded})\b)[^>]*&gt;"
    else:
        pattern = r"<[^>]*>"
        entity_pattern = r"&lt;[^>]*&gt;"
    
    # Remove all tags except for those in exclude_tags
    text = re.sub(pattern, "", text)
    text = re.sub(entity_pattern, "", text)
    
    return text