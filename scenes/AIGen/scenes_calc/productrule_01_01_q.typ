#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachte die Funktion:")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^2 dot e^x $]]
#only("2")[
  #voiceover("f von x gleich x Quadrat mal e hoch x. Berechne die Ableitung dieser Funktion mit der Produktregel.")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = x^2 dot e^x$?",
  answerOptions: ("Die Ableitung ist $f'(x) = 2x dot e^x + x^2 dot e^x$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)