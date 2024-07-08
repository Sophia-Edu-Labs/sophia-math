#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Brüche multiplizieren]
  #v(40pt)

  #only("1-")[
    Berechne:
    #v(20pt)
    $ 5/6 dot 3/7 $
  ]

  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben. Berechne fünf Sechstel mal drei Siebtel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{5}{6}$ mit $\frac{3}{7}$.", 
answerOptions: ("$\frac{15}{42}$", "$\frac{-26}{-80}$"), 
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
answerOptionMatcher:("$\frac{\key{a}}{\key{b}}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)