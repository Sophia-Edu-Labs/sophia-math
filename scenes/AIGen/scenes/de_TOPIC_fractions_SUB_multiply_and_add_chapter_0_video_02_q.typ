#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen mit dieser Übung üben.")
  ]
  #text(size: 30pt, weight: "bold")[Brüche Multiplizieren]
  #v(40pt)
  #only("2-")[
    #align(center)[
      Multipliziere: $3/4 × 2/5$
    ]
  ]
  #only("2")[
    #voiceover("Multipliziere drei Viertel mit zwei Fünftel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{3}{4}$ mit $\frac{2}{5}$.", 
answerOptions: ("$\frac{3}{4} \\times \frac{2}{5} = 0.3$", "$\frac{3}{4} \\times \frac{2}{5} = 3.4$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{3}{4} \\times \frac{2}{5} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)