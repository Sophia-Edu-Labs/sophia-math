#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
  #v(40pt)

  #only("1-")[
    Berechne das Skalarprodukt:
    #v(20pt)
    $ (1, 1) dot (2, 2) $
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir das Berechnen des Skalarprodukts zweier Vektoren üben. Berechne das Skalarprodukt der Vektoren eins, eins und zwei, zwei.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Berechne das Skalarprodukt der Vektoren $(1, 1)$ und $(2, 2)$. ", 
answerOptions: ("$\begin{bmatrix} 4 \end{bmatrix}$", "$\begin{bmatrix} -4 \end{bmatrix}$"), 
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