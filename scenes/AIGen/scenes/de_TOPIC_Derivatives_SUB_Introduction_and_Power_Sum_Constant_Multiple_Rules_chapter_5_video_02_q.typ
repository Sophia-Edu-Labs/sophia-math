#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Anwendung der Potenzregel]
  ]
  #v(40pt)

  #only("2-")[
    Finde die Ableitung von $f(x) = 6x^5$
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Potenzregel für die Differentiation anzuwenden.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Finde die Ableitung von f von x gleich 6 x hoch fünf.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Ableitung von $f(x) = 6x^5$.", 
answerOptions: ("$f'(x) = 30x^4$", "$f'(x) = -56x^-4$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(x) = \key{a}x^\key{b}$"), 
answerOptionsTypes: ("a": "Zahl",
"b": "Zahl",
) 
), 
)