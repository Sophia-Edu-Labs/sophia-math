#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Hier kommt die nächste Aufgabe:")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^4 - x^2 $]]
#only("2")[
  #voiceover("Was ist die Ableitung der Funktion f von x gleich x hoch vier minus x Quadrat?")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = x^4 - x^2$?",
  answerOptions: ("Die Ableitung ist $f'(x) = 4x^3 - 2x$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)