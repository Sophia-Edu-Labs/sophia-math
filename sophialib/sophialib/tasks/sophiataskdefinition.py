
from dataclasses import dataclass, field
import re
from typing import List, Optional, Dict, Any

def remove_latex_dollar_signs(text):
    # Pattern to match "$[...]" and "$$[...$$" sequences
    pattern = r'\$\$?(.*?)\$\$?'
    
    # Find all matches
    matches = re.findall(pattern, text)
    
    # Remove all matches
    text_without_dollars = re.sub(pattern, r'\1', text)

    return text_without_dollars


@dataclass
class SophiaFreeTextTaskDetail(): 
    # default -1, to use the last answer option as fallback
    fallbackOptionIndex: Optional[int] = -1
    # A string that can be used to match free text inputs to answer options
    # Assume we have answer options ["$a=3$", "$a=2$", "$a=\\frac{1}{2}$", "$a=-2$"]
    # A possible matcher would be "$a=\key{a}$"
    # the keys defined in the matcher will determine the possible number of input fields
    answerOptionMatcher: Optional[str] = "\key{a}"
    # A dictionary of descriptions, that will be used to describe the input fields. Every key in the matcher will be used as key in the dictionary
    answerOptionDescriptions: Optional[Dict[str, str]] = None
    # A dictionary of types, that will be used to determine the type of the input fields. Every key in the matcher will be used as key in the dictionary
    # Possible types right now are: "number"
    answerOptionsTypes: Optional[Dict[str, str]] = field(default_factory=lambda: {
        "a": "number"
    })
    # A dictionary that will associate every key in the matcher with some optional settings that can be used to specify which equality should be used when comparing the entered answer for a key with the one specified in the correct answer.
    answerOptionsEquality: Optional[Dict[str, Dict[str, Any]]] = None

@dataclass
class SophiaLLMQuestionCheckDetail():
    # This will be used as the fallback answer option index, if the user input does not match any of the answer options explicitly (if it is not correct)
    fallbackOptionIndex: int
    # Those are special input snippets that are available when evaluating with an LLM (i.e, if the user has a real text input)
    specialInputSnippets: Optional[List[str]] = None


@dataclass
class SophiaTaskDefinition():
    answerOptions: List[str]
    correctAnswerIndex: int
    questionText: str
    questionVideoPrototypeID: Optional[str] = None
    # If set, this question will be rendered as a free text question
    freeTextDetail: Optional[SophiaFreeTextTaskDetail] = None
    # If set, this question will be rendered as a LLM question
    llmCheckDetails: Optional[SophiaLLMQuestionCheckDetail] = None


    # Function that will return the question text, but without the Latex-Like math sequences of "$[...]$" and "$$[...]$$"
    def get_question_text_without_dollars(self):
        return remove_latex_dollar_signs(self.questionText)
    
    @property
    def questionTextWithoutDollars(self):
        return self.get_question_text_without_dollars()
    
    def get_answer_options_without_dollars(self):
        return [remove_latex_dollar_signs(answerOption) for answerOption in self.answerOptions]

    @property
    def answerOptionsWithoutDollars(self):
        return self.get_answer_options_without_dollars()