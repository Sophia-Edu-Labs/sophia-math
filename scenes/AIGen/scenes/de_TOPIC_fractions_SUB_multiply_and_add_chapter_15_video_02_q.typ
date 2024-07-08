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
    $ 5/6 dot 1/2 $
  ]

  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben. Berechne fünf Sechstel mal ein Halb.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{5}{6}$ mit $\frac{1}{2}$.", 
answerOptions: ("$\frac{5}{6} \\times \frac{1}{2} = 0.4167$", "$\frac{5}{6} \\times \frac{1}{2} = 3.1666$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{5}{6} \\times \frac{1}{2} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)