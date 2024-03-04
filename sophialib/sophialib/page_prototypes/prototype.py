import importlib.util
import inspect
import itertools
import json
import os
from pathlib import Path
import sys
from typing import List, Literal, Type, Union, Optional, Dict

from sophialib.styles.sophiascene import SophiaQuestionInfo, SophiaScene
from sophialib.tasks.sophiataskdefinition import SophiaFreeTextTaskDetail, SophiaLLMQuestionCheckDetail, SophiaTaskDefinition

class PagePrototype:
    def __init__(self, prototypeID: str, type: Union[Literal['video'], Literal['question']]):
        self.prototypeID = prototypeID
        self.type = type

    def to_json(self):
        return {
            "prototypeID": self.prototypeID,
            "type": self.type
        }

class PagePrototypeVideo(PagePrototype):
    def __init__(self, prototypeID: str):
        super().__init__(prototypeID, 'video')

    def to_json(self):
        return {
            **super().to_json(),
        }

    # Factory method that will create a PagePrototypeVideo from a SophiaScene
    @staticmethod
    def from_scene(scene: SophiaScene):
        return PagePrototypeVideo(
            prototypeID = f"VIDEO_{scene.__name__}",
        )
    
    # Factory method to create a PagePrototypeVideo from a path to a typst file (i.e. basically from the name of the file path)
    @staticmethod
    def from_typst_file_path(typst_file_path: Path):
        return PagePrototypeVideo(
            prototypeID = f"VIDEO_AI_{typst_file_path.stem}"
        )


class PagePrototypeQuestion(PagePrototype):
    def __init__(
        self,
        prototypeID: str,
        questionVideoPrototypeID: str,
        answerOptions: List[str],
        correctAnswerIndex: int,
        questionText: str,
        freetext: Optional[Dict[str, Union[str, int, dict]]],
        llmCheckDetails: Optional[Dict[str, Union[str, int, dict, list]]],
    ):
        super().__init__(prototypeID, 'question')
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
    def from_task_definition(task_definition: SophiaTaskDefinition, unprefixed_prototypeID: str):
        return PagePrototypeQuestion(
            prototypeID = f"QUESTION_{unprefixed_prototypeID}",
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

        return PagePrototypeQuestion.from_task_definition(
            task_definition = task_def,
            unprefixed_prototypeID = sceneWithQuestionInfoType.__name__
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

        return PagePrototypeQuestion.from_task_definition(
            sophia_task_def,
            unprefixed_prototypeID = f"AI_{typst_file_path.stem}"
        )




def get_page_prototype_variables(file_path: Path, add_parent_folder_to_sys_path: bool = False):
    """Takes the file at the given path and returns all classes in the file that are subclasses of PagePrototype. 
    If add_parent_folder_to_sys_path is True, the parent folder of the file will be added to sys.path, which allows realtive imports in that folder."""
    if add_parent_folder_to_sys_path:
        sys.path.append(str(file_path.parent))


    module_name = file_path.stem
    spec = importlib.util.spec_from_file_location(module_name, file_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    objs = [obj for name, obj in inspect.getmembers(module) if isinstance(obj, PagePrototype) or (isinstance(obj, list) and all(isinstance(v, PagePrototype) for v in obj))]
    # flatten objs, i.e. flatten an array of the form: [[a, b], c, [d, e]] -> [a, b, c, d, e]
    objs = list(itertools.chain.from_iterable([e if isinstance(e, list) else [e] for e in objs]))
    return objs
