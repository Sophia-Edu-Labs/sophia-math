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
    $vec(3, 4) dot vec(1, 2)$
  ]

  #only("1")[
    #voiceover("Let's practice calculating the dot product. Find the dot product of the vectors three, four and one, two.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the dot product of vectors $(3, 4)$ and $(1, 2)$. ", 
answerOptions: ("$\begin{bmatrix} 11 \end{bmatrix}$", "$\begin{bmatrix} -18 \end{bmatrix}$"), 
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