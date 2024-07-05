#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice scalar multiplication of matrices with a numerical exercise.")
  ]
  #text(size: 30pt, weight: "bold")[Scalar Matrix Multiplication]
  #v(40pt)

  #only("2-")[
    Multiply the matrix by the scalar:
    #v(20pt)
    $2 dot mat(
      2, 3;
      4, 5
    )$
  ]

  #only("2")[
    #voiceover("Multiply the matrix two, three, four, five by the scalar 2.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrix $\begin{bmatrix} 2 & 3 \\\\ 4 & 5 \end{bmatrix}$ by the scalar $2$.", 
answerOptions: ("$\begin{bmatrix} 4 & 6 \\\\ 8 & 10 \end{bmatrix}$", "$\begin{bmatrix} -4 & -8 \\\\ -12 & -16 \end{bmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
c: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
d: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)