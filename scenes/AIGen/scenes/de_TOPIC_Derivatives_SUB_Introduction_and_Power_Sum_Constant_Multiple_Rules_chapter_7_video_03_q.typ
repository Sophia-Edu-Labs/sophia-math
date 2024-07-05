#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Ableitung der Potenzfunktion]
  ]
  #v(40pt)

  #only("2-")[
    Berechne die Ableitung von $f(x) = 4x^4$ bei $x = 2$
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Regel für konstante Vielfache bei einer Potenzfunktion anzuwenden.")
  ]

  #only("2")[
    #voiceover("Berechne die Ableitung von f von x gleich 4 x hoch 4 bei x gleich 2.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert der Ableitung von $f(x) = 4x^4$ bei $x = 2$?", 
answerOptions: ("$128$", "$-252$"), 
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