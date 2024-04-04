#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachte die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 3x^3 - 1/5 dot x^5 $]]
#only("2")[
  #voiceover("f von x gleich drei mal x hoch drei minus ein Fünftel mal x hoch fünf. Bestimmme die Ableitung dieser Funktion unter Verwendung der Faktorregel")
]
]

#questionDef(
  questionText: "Berechne die Ableitung der Funktion $f(x) = 3x^3 - 1/5 dot x^5$.",
  answerOptions: ("Die Ableitung ist $f'(x) = 9x^2 - x^4$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)