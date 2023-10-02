import importlib.util
import inspect
import itertools
from pathlib import Path
import sys
from typing import List, Literal, Type, Union, Optional

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
    def __init__(self, prototypeID: str, videoID: Optional[str] = None):
        super().__init__(prototypeID, 'video')
        self.videoID = videoID

    def to_json(self):
        return {
            **super().to_json(),
            "videoID": self.videoID
        }

    # Factory method that will create a PagePrototypeVideo from a SophiaScene
    @staticmethod
    def from_scene(scene: SophiaScene):
        return PagePrototypeVideo(
            prototypeID = f"VIDEO_{scene.__name__}",
            videoID = scene.videoID if hasattr(scene, 'videoID') else None
        )

class PagePrototypeQuestion(PagePrototype):
    def __init__(
        self,
        prototypeID: str,
        questionVideoPrototypeID: str,
        answerOptions: List[str],
        correctAnswerIndex: int,
        questionText: str
    ):
        super().__init__(prototypeID, 'question')
        self.questionVideoPrototypeID = questionVideoPrototypeID
        self.answerOptions = answerOptions
        self.correctAnswerIndex = correctAnswerIndex
        self.questionText = questionText

    def to_json(self):
        return {
            **super().to_json(),
            "questionVideoPrototypeID": self.questionVideoPrototypeID,
            "answerOptions": self.answerOptions,
            "correctAnswerIndex": self.correctAnswerIndex,
            "questionText": self.questionText
        }

    # Factory method that will create a PagePrototypeQuestion from a SophiaTaskDefinition
    @staticmethod
    def from_task_definition(task_definition: SophiaTaskDefinition, unprefixed_prototypeID: str):
        return PagePrototypeQuestion(
            prototypeID = f"QUESTION_{unprefixed_prototypeID}",
            questionVideoPrototypeID = task_definition.questionVideoPrototypeID,
            answerOptions = task_definition.answerOptions,
            correctAnswerIndex = task_definition.correctAnswerIndex,
            questionText = task_definition.questionText
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
