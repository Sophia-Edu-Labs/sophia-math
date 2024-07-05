#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitungsberechnung]
  #v(40pt)

  #only("1-")[
    Gegeben: $f(x) = 4x^4 + 2x^3$
  ]
  #v(20pt)

  #only("2-")[
    Gesucht: $f'(1)$
  ]

  #only("1")[
    #voiceover("Betrachten wir die Funktion f von x gleich 4 x hoch 4 plus 2 x hoch 3.")
  ]

  #only("2")[
    #voiceover("Wir müssen den Wert der Ableitung dieser Funktion bei x gleich 1 finden.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert der Ableitung von $f(x) = 4x^4 + 2x^3$ bei $x = 1$?", 
answerOptions: ("$20$", "$-36$"), 
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