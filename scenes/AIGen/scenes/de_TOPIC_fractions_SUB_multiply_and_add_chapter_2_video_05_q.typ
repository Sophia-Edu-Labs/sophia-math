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
    Berechne: $5/8 dot 7/9$
  ]
  #only("2")[
    #voiceover("Berechne das Produkt von fünf Achteln und sieben Neunteln.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere $\frac{5}{8}$ mit $\frac{7}{9}$. Was ist das Ergebnis?", 
answerOptions: ("$\frac{35}{72}$", "$\frac{-66}{-140}$"), 
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