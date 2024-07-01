#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Dot Product Calculation]
  ]
  #v(40pt)

  #only("2-")[
    Calculate the dot product:
  ]
  #v(20pt)

  #only("3-")[
    $vec(a) = (2, 5, 6)$ and $vec(b) = (3, 1, 2)$
  ]

  #only("1")[
    #voiceover("Let's practice calculating the dot product of two vectors.")
  ]

  #only("2")[
    #voiceover("Here's our exercise: we need to find the dot product of two given vectors.")
  ]

  #only("3")[
    #voiceover("We have vector a, which is 2, 5, 6, and vector b, which is 3, 1, 2. Calculate their dot product.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the dot product of vectors $(2, 5, 6)$ and $(3, 1, 2)$.", 
answerOptions: ("$\begin{bmatrix} 25 \end{bmatrix}$", "$\begin{bmatrix} -46 \end{bmatrix}$"), 
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