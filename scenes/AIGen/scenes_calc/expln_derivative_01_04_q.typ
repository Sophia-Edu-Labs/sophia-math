#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Hier kommt die nächste Aufgabe: Bestimme die Ableitung")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = e^x - 3ln(x) $]]
#only("2")[
  #voiceover("der Funktion f von x gleich e hoch x minus drei mal natürlicher Logarithmus von x.")
]
]

#questionDef(
  questionText: "Bestimme die Ableitung der Funktion $f(x) = e^x - 3ln(x)$.",
  answerOptions: ("Die Ableitung ist $f'(x) = e^x - 3/x$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)