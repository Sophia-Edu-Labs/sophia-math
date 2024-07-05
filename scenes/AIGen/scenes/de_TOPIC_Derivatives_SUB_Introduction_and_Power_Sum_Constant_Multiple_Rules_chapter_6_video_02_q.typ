#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Ableitung mit der Summenregel]]
  #v(40pt)

  #only("2-")[
    Finde die Ableitung von:
    $ f(x) = x^2 + 3x $
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Summenregel für Ableitungen anzuwenden.")
  ]

  #only("2")[
    #voiceover("Finde die Ableitung der Funktion f von x, die gleich x Quadrat plus drei x ist.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Ableitung von $f(x) = x^2 + 3x$.", 
answerOptions: ("$f'(x) = 2x + 3$", "$f'(x) = 2x + 3$"), 
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
answerOptionMatcher:("$f'(x) = 2x + 3$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)