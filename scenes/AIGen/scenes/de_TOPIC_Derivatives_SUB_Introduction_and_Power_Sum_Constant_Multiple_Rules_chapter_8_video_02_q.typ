#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung mit der Potenzregel]
  #v(40pt)

  #only("1-")[
    Finde die Ableitung von:
    #v(20pt)
    $ f(x) = 2x^3 + 3x^2 $
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Potenzregel und Summenregel für Ableitungen üben. Lass uns die Ableitung der Funktion f von x gleich 2 x hoch 3 plus 3 x hoch 2 finden.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Ableitung von $f(x) = 2x^3 + 3x^2$.", 
answerOptions: ("$f'(x) = 6x^2 + 6x$", "$f'(x) = 6x^2 + -8x$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(x) = 6x^2 + \key{a}x$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)