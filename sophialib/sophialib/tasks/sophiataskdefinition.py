
from dataclasses import dataclass
import re
from typing import List, Optional

def remove_latex_dollar_signs(text):
    # Pattern to match "$[...]" and "$$[...$$" sequences
    pattern = r'\$\$?(.*?)\$\$?'
    
    # Find all matches
    matches = re.findall(pattern, text)
    
    # Remove all matches
    text_without_dollars = re.sub(pattern, r'\1', text)

    return text_without_dollars



@dataclass
class SophiaTaskDefinition():
    answerOptions: List[str]
    correctAnswerIndex: int
    questionText: str
    questionVideoPrototypeID: Optional[str] = None

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