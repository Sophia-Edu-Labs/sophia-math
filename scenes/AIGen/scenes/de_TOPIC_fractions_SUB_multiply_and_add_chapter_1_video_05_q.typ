#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das Multiplizieren von Brüchen üben.")
  ]
  #text(size: 30pt, weight: "bold")[Brüche Multiplizieren]
  #v(40pt)
  #only("2-")[
    Berechne:
    #v(20pt)
    $ 2/7 dot 4/6 $
  ]
  #only("2")[
    #voiceover("Berechne das Produkt von zwei Siebteln und vier Sechsteln.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{2}{7}$ mit $\frac{4}{6}$.", 
answerOptions: ("$\frac{2}{7} \\times \frac{4}{6} = 0.1905$", "$\frac{2}{7} \\times \frac{4}{6} = 3.6189999999999998$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{2}{7} \\times \frac{4}{6} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)