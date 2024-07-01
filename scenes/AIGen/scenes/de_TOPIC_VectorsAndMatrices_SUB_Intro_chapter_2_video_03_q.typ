#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
  ]
  #v(40pt)

  #only("2-")[
    Berechne das Skalarprodukt:
  ]
  #v(20pt)

  #only("3-")[
    $vec(a) = (2, 5, 6)$ und $vec(b) = (3, 1, 2)$
  ]

  #only("1")[
    #voiceover("Lass uns das Skalarprodukt von zwei Vektoren berechnen.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Aufgabe: Wir müssen das Skalarprodukt von zwei gegebenen Vektoren finden.")
  ]

  #only("3")[
    #voiceover("Wir haben Vektor a, welcher 2, 5, 6 ist, und Vektor b, welcher 3, 1, 2 ist. Berechne ihr Skalarprodukt.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Finde das Skalarprodukt der Vektoren $(2, 5, 6)$ und $(3, 1, 2)$.", 
answerOptions: ("$\begin{bmatrix} 25 \end{bmatrix}$", "$\begin{bmatrix} -46 \end{bmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)