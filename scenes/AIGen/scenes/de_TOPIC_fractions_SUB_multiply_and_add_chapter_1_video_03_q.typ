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
    $ 5/9 dot 2/3 $
  ]

  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben. Berechne fünf Neuntel mal zwei Drittel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{5}{9}$ mit $\frac{2}{3}$.", 
answerOptions: ("$\frac{5}{9} \\times \frac{2}{3} = 0.37037037037$", "$\frac{5}{9} \\times \frac{2}{3} = 3.2592592592600003$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{5}{9} \\times \frac{2}{3} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)