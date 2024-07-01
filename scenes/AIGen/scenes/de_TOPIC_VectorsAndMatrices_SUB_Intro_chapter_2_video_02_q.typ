#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
  #v(40pt)

  #only("1-")[
    Berechne das Skalarprodukt:
    #v(20pt)
    $vec(3, 4) dot vec(1, 2)$
  ]

  #only("1")[
    #voiceover("Lass uns das Berechnen des Skalarprodukts üben. Finde das Skalarprodukt der Vektoren drei, vier und eins, zwei.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Berechne das Skalarprodukt der Vektoren $(3, 4)$ und $(1, 2)$. ", 
answerOptions: ("$\begin{bmatrix} 11 \end{bmatrix}$", "$\begin{bmatrix} -18 \end{bmatrix}$"), 
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