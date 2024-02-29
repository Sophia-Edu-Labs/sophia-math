from io import StringIO
import json
import pathlib
import re
import shutil
import subprocess
import textwrap
import time
from typing import Literal, Optional, Tuple, Union

import matplotlib
import matplotlib.pyplot as plt


pyinit_re = re.compile(r"pyinit\(\s*```\n?([^`]*)\n?```")
pyimage_re = re.compile(r"pyimage\(\s*```\n?([^`]*)\n?```")
pycontent_re = re.compile(r"pycontent\(\s*```\n?([^`]*)\n?```")

def _write_output_content(code: str, type: Literal["svg", "txt", "png"], output: str, output_json_path: pathlib.Path, error_msg: Optional[str] = None):
    if type not in ["svg", "txt", "png"]:
        raise ValueError(f"Unknown type: {type}")
    
    current_contents = []
    # if the file does not exist, then create it (inlcuding the parent directories if necessary)
    if not output_json_path.exists():
        output_json_path.parent.mkdir(parents=True, exist_ok=True)
        output_json_path.touch()

    with open(output_json_path) as f:
        try: 
            current_contents = json.load(f)
        except json.JSONDecodeError:
            # assume that the file is empty
            pass
    
    dict_to_write = {
        "code": code.strip(), # to be consistent with typst
        "type": type,
        "output": output,
        "lastUpdated": time.time(),
    }

    # optionally add the possibility to output an error message through the content json 
    if error_msg is not None:
        dict_to_write["error"] = error_msg

    # loop through the current contents and check if there is one with the given code, then update it, otherwise just add the new one
    for i, content in enumerate(current_contents):
        if content["code"] == code:
            current_contents[i] = dict_to_write
            break
    else: # if the loop did not break, then add the new one
        current_contents.append(dict_to_write)

    
    # write the updated contents back to the file
    with open(output_json_path, "w", encoding="utf-8") as f:
        json.dump(current_contents, f, indent=4)
    

def _make_fig(code: str):
    plt.figure()  # Don't overwrite our current figure.
    
    with matplotlib.rc_context():
        exec(code)
    
    # Not the plt.figure() from above, just in case the code creates a new figure.
    fig = plt.gcf()

    return fig


def _make_content(code: str):
    code_pieces = code.rsplit("\n", 1)
    if len(code_pieces) == 1:
        code = "out = " + code
    else:
        code, last_line = code_pieces
        last_line = "out = " + last_line
        code = code + "\n" + last_line
        
    exec(code)
    
    return out


def _make_contents(
    typstfile_path: pathlib.Path,
    contents_path: pathlib.Path,
    # when set, all contents are re-exec'ed (and not used from the given contents.json file)
    force_recreate: bool = False,
) -> Tuple[str, dict]:
    
    if force_recreate:
        # remove the contents file
        contents_path.unlink(missing_ok=True)
    
    # read the conents of the typst file
    with open(typstfile_path) as f:
        typst_doc = f.read()
    
    # look up for init code    
    inits = list(pyinit_re.finditer(typst_doc))
    if len(inits) == 0:
        malformed = False
        init_code = ""
    elif len(inits) == 1:
        malformed = False
        [init_code] = inits[0].groups()
        processed_init_code = textwrap.dedent(init_code).strip()
    
        try:
            exec(processed_init_code)
        except Exception as e:
            malformed = True
            malformed_msg = "In pyinit: " + str(e)
    else:
        malformed = True
        malformed_msg = "Cannot have multiple #pyinit directives"
        init_code = ""
    
    # if the init code is malformed, then we don't need to do anything else, raise an error
    if malformed:
        raise ValueError(malformed_msg)
    
    
    # Image generation
    for i, image_match in enumerate(pyimage_re.finditer(typst_doc)):
        [code] = image_match.groups()
        processed_code = textwrap.dedent(code).strip()
        
        try: 
            fig = _make_fig(processed_code)
        except Exception as e:
            _write_output_content(processed_code, "svg", "", contents_path, error_msg=str(e))
            continue
        
        # get figure svg
        imgdata = StringIO()
        fig.savefig(imgdata, format='svg')
        imgdata.seek(0)  # rewind the data

        svg_data = imgdata.getvalue()  # this is svg data

        # write the svg data to the output file
        _write_output_content(processed_code, "svg", svg_data, contents_path, error_msg=None)


    # Content/String generation
    for i, content_match in enumerate(pycontent_re.finditer(typst_doc)):
        [code] = content_match.groups()
        processed_code = textwrap.dedent(code).strip()
            
        try: 
            out = _make_content(processed_code)
        except Exception as e:
            _write_output_content(processed_code, "txt", "", contents_path, error_msg=str(e))
            continue

        # write the output to the output file
        _write_output_content(processed_code, "txt", out, contents_path, error_msg=None)
    



if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("typstfile", help="Path to the typst file")
    parser.add_argument("contentsfile", help="Path to the contents file")
    parser.add_argument("--force-recreate", action="store_true", help="When set, all contents are re-exec'ed (and not used from the given contents.json file)")
    args = parser.parse_args()

    typstfile_path = pathlib.Path(args.typstfile)
    contents_path = pathlib.Path(args.contentsfile)

    _make_contents(typstfile_path, contents_path)