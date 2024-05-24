import importlib.util
import inspect
import itertools
import json
import os
from pathlib import Path
import sys
from typing import List, Literal, Tuple, Type, Union, Optional, Dict

from sophialib.filehelpers.load_sophia_scenes import get_module_manim_sophiascene_classes
from sophialib.styles.sophiascene import SophiaQuestionInfo, SophiaScene
from sophialib.tasks.sophiataskdefinition import SophiaFreeTextTaskDetail, SophiaLLMQuestionCheckDetail, SophiaTaskDefinition
from sophialib.translation.currentlocale import CURRENT_LOCALE

# util function that will parse lang_code and base_prototypeID from typ filename stem
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

class PagePrototype:
    def __init__(self, prototypeID: str, type: Union[Literal['video'], Literal['question'], Literal['web']], lang_code: str):
        self.prototypeID = prototypeID
        self.type = type
        self.lang_code = lang_code

    def to_json(self):
        return {
            "prototypeID": self.prototypeID,
            "type": self.type,
            "lang_code": self.lang_code
        }

    @property
    def base_prototypeID(self):
        return self.prototypeID.split("_", 1)[1]

class PagePrototypeVideo(PagePrototype):
    def __init__(self, prototypeID: str, lang_code: str):
        super().__init__(prototypeID, 'video', lang_code)

    def to_json(self):
        return {
            **super().to_json(),
        }

    # Factory method that will create a PagePrototypeVideo from a SophiaScene
    @staticmethod
    def from_scene(scene: SophiaScene):
        return PagePrototypeVideo(
            prototypeID = f"VIDEO_{scene.__name__}",
            lang_code = scene().current_locale()
        )
    
    # Factory method to create a PagePrototypeVideo from a path to a typst file (i.e. basically from the name of the file path)
    @staticmethod
    def from_typst_file_path(typst_file_path: Path):
        stem = typst_file_path.stem
        
        lang_code, base_prototypeID = parse_lang_code_and_base_prototypeID_from_typst_file_stem(stem)

        return PagePrototypeVideo(
            prototypeID = f"VIDEO_AI_{base_prototypeID}", 
            lang_code = lang_code
        )


class PagePrototypeQuestion(PagePrototype):
    def __init__(
        self,
        prototypeID: str,
        lang_code: str,
        questionVideoPrototypeID: str,
        answerOptions: List[str],
        correctAnswerIndex: int,
        questionText: str,
        freetext: Optional[Dict[str, Union[str, int, dict]]],
        llmCheckDetails: Optional[Dict[str, Union[str, int, dict, list]]],
    ):
        super().__init__(prototypeID, 'question', lang_code)
        self.questionVideoPrototypeID = questionVideoPrototypeID
        self.answerOptions = answerOptions
        self.correctAnswerIndex = correctAnswerIndex
        self.questionText = questionText
        self.freetext = freetext
        self.llmCheckDetails = llmCheckDetails

    def to_json(self):
        res = {
            **super().to_json(),
            "questionVideoPrototypeID": self.questionVideoPrototypeID,
            "answerOptions": self.answerOptions,
            "correctAnswerIndex": self.correctAnswerIndex,
            "questionText": self.questionText, 
        }

        if self.freetext is not None:
            res["freetext"] = self.freetext

        if self.llmCheckDetails is not None:
            res["llmCheckDetails"] = self.llmCheckDetails

        return res

    # Factory method that will create a PagePrototypeQuestion from a SophiaTaskDefinition
    @staticmethod
    def from_task_definition(task_definition: SophiaTaskDefinition, base_prototypeID: str, lang_code: str):
        return PagePrototypeQuestion(
            prototypeID = f"QUESTION_{base_prototypeID}",
            lang_code = lang_code,
            questionVideoPrototypeID = task_definition.questionVideoPrototypeID,
            answerOptions = task_definition.answerOptions,
            correctAnswerIndex = task_definition.correctAnswerIndex,
            questionText = task_definition.questionText, 
            freetext = None if task_definition.freeTextDetail is None else {
                "fallbackOptionIndex": task_definition.freeTextDetail.fallbackOptionIndex,
                "answerOptionMatcher": task_definition.freeTextDetail.answerOptionMatcher,
                "answerOptionDescriptions": task_definition.freeTextDetail.answerOptionDescriptions,
                "answerOptionsTypes": task_definition.freeTextDetail.answerOptionsTypes,
                "answerOptionsEquality": task_definition.freeTextDetail.answerOptionsEquality,
            },
            llmCheckDetails= None if task_definition.llmCheckDetails is None else {
                "fallbackOptionIndex": task_definition.llmCheckDetails.fallbackOptionIndex,
                "specialInputSnippets": task_definition.llmCheckDetails.specialInputSnippets,
            }
        )
    
    # Factory method that will create a PagePrototypeQuestion from a SophiaScene
    @staticmethod
    def from_scene(sceneWithQuestionInfoType: Type[SophiaQuestionInfo]):

        # instantiate such a question info
        sceneWithQuestionInfo = sceneWithQuestionInfoType()
        
        task_def = sceneWithQuestionInfo.task_definition()

        lang_code = sceneWithQuestionInfo.current_locale()

        return PagePrototypeQuestion.from_task_definition(
            task_definition = task_def,
            base_prototypeID = sceneWithQuestionInfoType.__name__,
            lang_code = lang_code,
        )
    
    # Factory method to create a PagePrototypeQuestion from a path to a typst file (i.e. basically from the name of the file path and the corresponding question metadata in the document)
    # Raises an exception if such a question metadata could not be found
    @staticmethod
    def from_typst_file_path(typst_file_path: Path):
        command = f"typst query --root {typst_file_path.parent.parent} {typst_file_path} \"<questiondefinition>\""

        # run the command and capture the output string
        result = os.popen(command).read()

        # parse the result json
        parsed = json.loads(result)

        # if there is no question definition, raise an exception
        if len(parsed) == 0:
            raise Exception(f"No question definition found in {typst_file_path}")
        
        # if there are multiple question definitions, raise an exception
        if len(parsed) > 1:
            raise Exception(f"Multiple question definitions found in {typst_file_path}")
        
        # get the question definition
        question_definition = parsed[0]["value"]

        # check if free text details are specified
        free_text_detail = None
        if "freeTextDetail" in question_definition and question_definition["freeTextDetail"] is not None:
            free_text_detail = SophiaFreeTextTaskDetail(
                fallbackOptionIndex = question_definition["freeTextDetail"]["fallbackOptionIndex"],
            )

            # modify this free text detail to include the answerOptionMatcher, answerOptionDescriptions, answerOptionsTypes and answerOptionsEquality
            if "answerOptionMatcher" in question_definition["freeTextDetail"]:
                free_text_detail.answerOptionMatcher = question_definition["freeTextDetail"]["answerOptionMatcher"]
            
            if "answerOptionDescriptions" in question_definition["freeTextDetail"]:
                free_text_detail.answerOptionDescriptions = question_definition["freeTextDetail"]["answerOptionDescriptions"]

            if "answerOptionsTypes" in question_definition["freeTextDetail"]:
                free_text_detail.answerOptionsTypes = question_definition["freeTextDetail"]["answerOptionsTypes"]
            
            if "answerOptionsEquality" in question_definition["freeTextDetail"]:
                free_text_detail.answerOptionsEquality = question_definition["freeTextDetail"]["answerOptionsEquality"]


        # check if there are llm check details
        llm_check_details = None
        if "llmCheckDetails" in question_definition and question_definition["llmCheckDetails"] is not None:
            llm_check_details = SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex = question_definition["llmCheckDetails"]["fallbackOptionIndex"],
            )

            if "specialInputSnippets" in question_definition["llmCheckDetails"]:
                llm_check_details.specialInputSnippets = question_definition["llmCheckDetails"]["specialInputSnippets"]
            
            
        
        # create a sophia task def based on the queried metadata
        sophia_task_def = SophiaTaskDefinition(
            answerOptions = question_definition["answerOptions"],
            correctAnswerIndex = question_definition["correctAnswerIndex"],
            questionText = question_definition["questionText"],
            questionVideoPrototypeID = None,
            freeTextDetail = free_text_detail,
            llmCheckDetails = llm_check_details
        )

        lang_code, base_prototypeID = parse_lang_code_and_base_prototypeID_from_typst_file_stem(typst_file_path.stem)

        return PagePrototypeQuestion.from_task_definition(
            sophia_task_def,
            base_prototypeID = f"AI_{base_prototypeID}", 
            lang_code = lang_code
        )
    

def parse_prototypes_for_typst_file(typst_file_path: Path) -> List[PagePrototype]:
    # if not .typ file, raise exception
    if typst_file_path.suffix != ".typ":
        raise Exception(f"File {typst_file_path} is not a .typ file")
    
    prototypes: List[PagePrototype] = []

    # always every .typ file corresponds to a single video
    video_prototype = PagePrototypeVideo.from_typst_file_path(typst_file_path)
    prototypes.append(video_prototype)

    #if we can query metadata from the document, also create the corresponding question prototype based on that
    if typst_file_path.stem.endswith("_q"):
            question_prototype = PagePrototypeQuestion.from_typst_file_path(typst_file_path)
            prototypes.append(question_prototype)

    return prototypes

def parse_prototypes_for_py_file(py_file_path: Path, fallback_to_default_and_ensure_prototype_for_all_scenes: bool = False, add_parent_folder_to_sys_path: bool = False) -> List[PagePrototype]:
    # if not .py file, raise exception
    if py_file_path.suffix != ".py":
        raise Exception(f"File {py_file_path} is not a .py file")
    
    # Create the output list of PagePrototypes
    prototypes: List[PagePrototype] = []

    # read the python content
    module_name = py_file_path.stem
    spec = importlib.util.spec_from_file_location(module_name, py_file_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    prototypes = [obj for name, obj in inspect.getmembers(module) if isinstance(obj, PagePrototype) or (isinstance(obj, list) and all(isinstance(v, PagePrototype) for v in obj))]
    # flatten objs, i.e. flatten an array of the form: [[a, b], c, [d, e]] -> [a, b, c, d, e]
    prototypes = list(itertools.chain.from_iterable([e if isinstance(e, list) else [e] for e in prototypes]))

    # if it should fallback to ensure prototype for all manim scenes in the given file, do so 
    if fallback_to_default_and_ensure_prototype_for_all_scenes: 
        # get all manim scene classes in the module
        manim_scene_classes = get_module_manim_sophiascene_classes(py_file_path, add_parent_folder_to_sys_path=add_parent_folder_to_sys_path)

        # create the "potential" prototypes for all the manim scene classes

        for scene_class in manim_scene_classes:
            potential_prototype = PagePrototypeVideo.from_scene(scene_class)

            # if the prototype is not already in the list, add it
            if not any(pt.prototypeID == potential_prototype.prototypeID for pt in prototypes):
                prototypes.append(potential_prototype)


    return prototypes



def parse_prototypes_for_file(file_path: Path, add_parent_folder_to_sys_path: bool = False) -> List[PagePrototype]:
    """Takes the file at the given path and returns all classes in the file that are subclasses of PagePrototype.
    If add_parent_folder_to_sys_path is True, the parent folder of the file will be added to sys.path, which allows realtive imports in that folder."""

    # raise an exception if file_path does not exist
    if not file_path.exists():
        raise Exception(f"File {file_path} does not exist")
    
    # raise an exception if file_path does not end to ".typ" or ".py"
    if file_path.suffix not in [".typ", ".py"]:
        raise Exception(f"File {file_path} is not a .typ or .py file")
    
    if add_parent_folder_to_sys_path:
        sys.path.append(str(file_path.parent))
    
    # Create the output list of PagePrototypes
    prototypes: List[PagePrototype] = []

    # if the file is a .typ file, use the parse_prototypes_for_typst_file function
    if file_path.suffix == ".typ":
        prototypes = parse_prototypes_for_typst_file(file_path)
    
    # if the file is a .py file, use the parse_prototypes_for_py_file function
    if file_path.suffix == ".py":
        prototypes = parse_prototypes_for_py_file(file_path, 
                                                  add_parent_folder_to_sys_path=add_parent_folder_to_sys_path, 
                                                  fallback_to_default_and_ensure_prototype_for_all_scenes=True)

    return prototypes

