import importlib.util
import inspect
import itertools
from pathlib import Path
import sys
from typing import List, Literal, Type, Union, Optional, Dict

from sophialib.styles.sophiascene import SophiaQuestionInfo, SophiaScene
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition

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
