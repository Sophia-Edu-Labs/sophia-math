#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachte nun die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = e^x / x^2 $]]
#only("2")[
  #voiceover("f von x gleich e hoch x geteilt durch x Quadrat. Bestimme die Ableitung von f mit der Quotientenregel.")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = e^x / x^2$?",
  answerOptions: ("Die Ableitung ist $f'(x) = (x^2 dot e^x - e^x dot 2x) / x^4$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)