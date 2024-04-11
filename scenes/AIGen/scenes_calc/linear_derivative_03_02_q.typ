#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Betrachte nun die Funktion")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 0.5x^4 + x^(-3) $]]
#only("2")[
  #voiceover("f von x gleich null Komma fünf mal x hoch vier plus x hoch minus drei. Bestimme die Ableitung von f.")
]
]

#questionDef(
  questionText: "Was ist die Ableitung der Funktion $f(x) = 0.5x^4 + x^{-3}$?",
  answerOptions: ("Die Ableitung ist $f'(x) = 2x^3 - 3x^{-4}$, oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)