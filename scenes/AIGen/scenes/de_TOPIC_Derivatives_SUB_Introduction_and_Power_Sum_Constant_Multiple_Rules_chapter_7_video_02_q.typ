#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Ableitung einer Potenzfunktion]
  ]
  #v(40pt)

  #only("2-")[
    Finde die Ableitung von $f(x) = 5x^3$
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Regel für konstante Vielfache anwenden, um die Ableitung einer Potenzfunktion zu finden.")
  ]

  #only("2")[
    #voiceover("Finde die Ableitung der Funktion f von x gleich 5 mal x hoch 3.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Ableitung von $f(x) = 5x^3$.", 
answerOptions: ("$f'(x) = 15x^2$", "$f'(x) = -26x^0$"), 
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
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)