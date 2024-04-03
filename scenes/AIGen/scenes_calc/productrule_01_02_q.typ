#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Hier kommt die nächste Aufgabe:")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = sin(x) dot x $]]
#only("2")[
  #voiceover("Bestimme die Ableitung der Funktion f von x gleich Sinus von x mal x. Nutze dabei die Produktregel.")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = sin(x) dot x$?",
  answerOptions: ("Die Ableitung ist $f'(x) = cos(x) dot x + sin(x)$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)