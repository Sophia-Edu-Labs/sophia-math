#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitungsberechnung]
  #v(40pt)

  #only("1-")[
    Gegeben: $f(x) = 4x^3 + 3x^2 + 2x$
  ]
  #v(20pt)

  #only("2-")[
    Finde: $f'(1)$
  ]

  #only("1")[
    #voiceover("Betrachten wir die folgende Frage:")
  ]

  #only("2")[
    #voiceover("Was ist der Wert der Ableitung der Funktion f von x gleich 4x hoch drei plus 3x hoch zwei plus 2x, ausgewertet bei x gleich 1?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert der Ableitung von $f(x) = 4x^3 + 3x^2 + 2x$ bei $x = 1$?", 
answerOptions: ("$17$", "$-30$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)