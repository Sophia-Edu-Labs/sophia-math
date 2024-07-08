#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben.")
  ]
  #text(size: 30pt, weight: "bold")[Brüche multiplizieren]
  #v(40pt)
  #only("2-")[
    Berechne: $3/4 dot 5/6$
  ]
  #only("2")[
    #voiceover("Berechne drei Viertel multipliziert mit fünf Sechstel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{3}{4}$ mit $\frac{5}{6}$. Was ist das Ergebnis?", 
answerOptions: ("$\frac{15}{24}$", "$\frac{-26}{-44}$"), 
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