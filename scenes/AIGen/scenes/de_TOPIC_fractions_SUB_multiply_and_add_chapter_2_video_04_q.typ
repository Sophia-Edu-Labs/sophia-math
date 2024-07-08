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
    $ 8/9 dot 1/2 $
  ]

  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben. Berechne acht Neuntel multipliziert mit ein Halb.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{8}{9}$ mit $\frac{1}{2}$.", 
answerOptions: ("$\frac{8}{9} \\times \frac{1}{2} = 0.4444$", "$\frac{8}{9} \\times \frac{1}{2} = 3.1112$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{8}{9} \\times \frac{1}{2} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)