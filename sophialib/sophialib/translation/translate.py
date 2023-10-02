import json
from pathlib import Path
from collections import defaultdict

from sophialib.constants.directories import LOCALES_PATH

# Helper to access nested dictionaries through a dot-separated key
def nested_dict_get(d, keys, default=None):
    keys_list = keys.split(".")
    for key in keys_list:
        if isinstance(d, dict) and key in d:
            d = d[key]
        else:
            return default  # return default value if key is not found
    return d  # return the nested value if all keys are found


def parse_locales():
    result = defaultdict(list)  # Initialize a default dictionary to hold lists of dictionaries.
    for path in LOCALES_PATH.rglob('*.json'):  # Use rglob to iterate over all json files in all subdirectories.
        lang_code = path.stem  # Get the language code from the file name (without extension).
        
        # Load the JSON file content 
        try:
            with open(path, 'r', encoding='utf-8') as f:
                content = json.load(f)
                result[lang_code] = content
        except json.JSONDecodeError:
            print(f"Error decoding JSON in {path}")
    
    return dict(result)


# variable to cache the parsed locales/translations
TRANSLATIONS = parse_locales()


def get_translation(key: str, lang_code: str):
    """Returns the translation for the given key and language code, or None if no translation was found."""
    return nested_dict_get(TRANSLATIONS[lang_code],key, None)