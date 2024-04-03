#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachten wir nun die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = ln(x^2) $]]
#only("2")[
  #voiceover("f von x gleich der natürliche Logarithmus von x Quadrat. Benutze wieder die Kettenregel, um die Ableitung zu bestimmen.")
]
]

#questionDef(
  questionText: "Bestimme die Ableitung der Funktion $f(x) = ln(x^2)$.",
  answerOptions: ("Die Ableitung ist $f'(x) = 2/x$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)