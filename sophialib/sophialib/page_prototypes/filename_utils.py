# util function that will parse lang_code and base_prototypeID from typ filename stem
from typing import Tuple
from sophialib.translation.currentlocale import CURRENT_LOCALE


def parse_lang_code_and_base_prototypeID_from_typst_file_stem(stem: str) -> Tuple[str, str]:
    # if the first element of the stem splitted by underscores is two characters long, then it is a language code
    stem_parts = stem.split("_")
    lang_code = CURRENT_LOCALE # default to CURRENT_LOCALE from environment
    base_prototypeID = stem

    if len(stem_parts[0]) == 2:
        lang_code = stem_parts[0]
        base_prototypeID = "_".join(stem_parts[1:])

    # always make sure lang code is upper case
    lang_code = lang_code.upper()

    return lang_code, base_prototypeID