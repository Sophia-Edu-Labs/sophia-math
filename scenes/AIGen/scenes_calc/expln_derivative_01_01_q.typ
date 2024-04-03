#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachte nun die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 3e^x $]]
#only("2")[
  #voiceover("f von x gleich drei mal e hoch x. Bestimme die Ableitung dieser Funktion")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = 3e^x$?",
  answerOptions: ("Die Ableitung ist $f'(x) = 3e^x$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)