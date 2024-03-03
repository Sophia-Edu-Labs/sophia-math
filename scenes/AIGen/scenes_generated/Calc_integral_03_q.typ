#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[ 
  #voiceover("Wir beginnen damit, das Integral der Funktion zu finden.") 
] 
Berechne eine Stammfunktion von 
#v(40pt) 
#only("2-")[#text()[$ f(x) = 2xe^(x^2) + 4x $]] 
#only("2")[ 
  #voiceover("der Funktion f von x gleich zwei mal x mal e hoch x Quadrat plus vier mal x.") 
] 
] 



def task_definition(self) -> SophiaTaskDefinition:
    return SophiaTaskDefinition(
        answerOptions = [
            "Die korrekte Antwort: $e^{x^2}+2x^2$, oder eine äquivalente Antwort",
            "Die Antwort ist nicht korrekt",
            ],
        correctAnswerIndex = 0,
        questionText = "Gegeben sei die Funktion $f(x)=2xe^{x^2}+4x$. Bestimme das Integral der Funktion.",
        llmCheckDetails=SophiaLLMQuestionCheckDetail(
            fallbackOptionIndex=1,
            specialInputSnippets = ["[ ]", "f"],
        )
    )
