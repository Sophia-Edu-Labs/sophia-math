#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachte nun die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 4ln(x) $]]
#only("2")[
  #voiceover("f von x gleich vier mal natürlicher Logarithmus von x. Bestimme die Ableitung dieser Funktion.")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = 4ln(x)$?",
  answerOptions: ("Die Ableitung ist $f'(x) = 4/x$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)