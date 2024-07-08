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
    $ 1/2 dot 3/4 $
  ]
  #only("2")[
    #voiceover("Berechne das Produkt von ein halb und drei viertel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{1}{2}$ mit $\frac{3}{4}$.", 
answerOptions: ("$\frac{1}{2} \\times \frac{3}{4} = 0.375$", "$\frac{1}{2} \\times \frac{3}{4} = 3.25$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{1}{2} \\times \frac{3}{4} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)