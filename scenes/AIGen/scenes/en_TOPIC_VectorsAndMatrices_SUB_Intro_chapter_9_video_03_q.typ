#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice calculating the dot product of vectors.")
  ]
  #text(size: 30pt, weight: "bold")[Vector Dot Product]
  #v(40pt)
  
  #only("2-")[
    Calculate the dot product:
    #v(20pt)
    $vec(4, 2) dot vec(1, 3)$
  ]
  
  #only("2")[
    #voiceover("Calculate the dot product of the vectors (4, 2) and (1, 3).")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the dot product of vectors $(4, 2)$ and $(1, 3)$.", 
answerOptions: ("$\begin{bmatrix} 10 \end{bmatrix}$", "$\begin{bmatrix} -16 \end{bmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)