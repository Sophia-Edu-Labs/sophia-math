#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das Berechnen des Skalarprodukts von Vektoren üben.")
  ]
  #text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
  #v(40pt)

  #only("2-")[
    Berechne das Skalarprodukt:
    #v(20pt)
    $ (-1, 2, 3) \cdot (4, 0, -2) $
  ]

  #only("2")[
    #voiceover("Berechne das Skalarprodukt der Vektoren minus eins, zwei, drei und vier, null, minus zwei.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Berechne das Skalarprodukt der Vektoren $(-1, 2, 3)$ und $(4, 0, -2)$.", 
answerOptions: ("$-10$", "$24$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)