#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Bestimme als nächstes die Ableitung")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^(-2) - x $]]
#only("2")[
  #voiceover("der Funktion f von x gleich x hoch minus zwei minus x?")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = x^(-2) - x$?",
  answerOptions: ("Die Ableitung ist $f'(x) = -2x^(-3) - 1$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)