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
    $ 7/9 dot 2/3 $
  ]

  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben. Berechne sieben Neuntel mal zwei Drittel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{7}{9}$ mit $\frac{2}{3}$.", 
answerOptions: ("$\frac{7}{9} \\times \frac{2}{3} = 0.5185$", "$\frac{7}{9} \\times \frac{2}{3} = 2.963$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{7}{9} \\times \frac{2}{3} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)