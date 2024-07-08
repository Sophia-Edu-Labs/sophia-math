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
    Berechne:
    #v(20pt)
    $ 3/5 dot 7/8 $
  ]
  #only("2")[
    #voiceover("Berechne drei Fünftel multipliziert mit sieben Achtel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{3}{5}$ mit $\frac{7}{8}$.", 
answerOptions: ("$\frac{21}{40}$", "$\frac{-38}{-76}$"), 
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