#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Bruchmultiplikation]
  #v(40pt)

  #only("1-")[
    Berechne:
    #v(20pt)
    $ 4/5 dot 3/8 $
  ]

  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben. Berechne vier Fünftel mal drei Achtel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{4}{5}$ mit $\frac{3}{8}$.", 
answerOptions: ("$\frac{4}{5} \\times \frac{3}{8} = 0.3$", "$\frac{4}{5} \\times \frac{3}{8} = 3.4$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{4}{5} \\times \frac{3}{8} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)