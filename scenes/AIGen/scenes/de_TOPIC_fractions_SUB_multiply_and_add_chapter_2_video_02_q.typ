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
    $ 4/5 dot 3/4 $
  ]

  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben. Berechne vier Fünftel multipliziert mit drei Viertel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{4}{5}$ mit $\frac{3}{4}$. Was ist das Ergebnis?", 
answerOptions: ("$\frac{4}{5} \\times \frac{3}{4} = 0.6$", "$\frac{4}{5} \\times \frac{3}{4} = 2.8$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{4}{5} \\times \frac{3}{4} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)