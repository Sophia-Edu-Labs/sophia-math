#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Dot Product Calculation]
  #v(40pt)

  #only("1-")[
    Calculate the dot product:
    #v(20pt)
    $ (1, 1) dot (2, 2) $
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice computing the dot product of two vectors. Calculate the dot product of the vectors one, one and two, two.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Compute the dot product of vectors $(1, 1)$ and $(2, 2)$. ", 
answerOptions: ("$\begin{bmatrix} 4 \end{bmatrix}$", "$\begin{bmatrix} -4 \end{bmatrix}$"), 
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