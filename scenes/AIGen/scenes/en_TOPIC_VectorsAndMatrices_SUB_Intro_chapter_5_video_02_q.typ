#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Matrix Scalar Multiplication]
  ]
  #v(40pt)

  #only("2-")[
    Multiply:
    #v(10pt)
    $ 3 dot mat(1, 2; 3, 4) $
  ]

  #only("1")[
    #voiceover("Let's practice scalar multiplication of matrices.")
  ]

  #only("2")[
    #voiceover("Multiply the matrix one, two; three, four by the scalar 3.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply matrix $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$ by scalar $3$.", 
answerOptions: ("$\begin{bmatrix} 3 & 6 \\\\ 9 & 12 \end{bmatrix}$", "$\begin{bmatrix} -2 & -8 \\\\ -14 & -20 \end{bmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
c: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
d: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)