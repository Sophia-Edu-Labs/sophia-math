#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns üben, das Skalarprodukt von Vektoren zu berechnen.")
  ]
  #text(size: 30pt, weight: "bold")[Vektor-Skalarprodukt]
  #v(40pt)
  
  #only("2-")[
    Berechne das Skalarprodukt:
    #v(20pt)
    $vec(4, 2) dot vec(1, 3)$
  ]
  
  #only("2")[
    #voiceover("Berechne das Skalarprodukt der Vektoren (4, 2) und (1, 3).")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Berechne das Skalarprodukt der Vektoren $(4, 2)$ und $(1, 3)$.", 
answerOptions: ("$\begin{bmatrix} 10 \end{bmatrix}$", "$\begin{bmatrix} -16 \end{bmatrix}$"), 
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