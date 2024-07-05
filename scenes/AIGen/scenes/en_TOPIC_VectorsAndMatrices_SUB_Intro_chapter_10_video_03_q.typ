#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Multiplication]
  #v(40pt)

  #only("1-")[
    Multiply:
    #v(10pt)
    $mat(1, 0, 2; 3, 1, 4) dot mat(2, 3; 1, 0; 5, 6)$
  ]

  #only("1")[
    #voiceover("Let's practice matrix multiplication. Multiply the matrices: 1, 0, 2; 3, 1, 4 and 2, 3; 1, 0; 5, 6.")
  ]

  #only("2-")[
    #v(20pt)
    Dimensions:
    #v(10pt)
    - Matrix 1: $2 times 3$
    #v(5pt)
    - Matrix 2: $3 times 2$
  ]

  #only("2")[
    #voiceover("Before we start, let's check the dimensions. The first matrix is 2 by 3, and the second is 3 by 2. This multiplication is possible because the number of columns in the first matrix matches the number of rows in the second.")
  ]

  #only("3-")[
    #v(20pt)
    Result: $2 times 2$ matrix
  ]

  #only("3")[
    #voiceover("The resulting matrix will have the same number of rows as the first matrix and the same number of columns as the second matrix. So, we expect a 2 by 2 matrix as our result.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix} 1 & 0 & 2 \\\\ 3 & 1 & 4 \end{bmatrix}$ and $\begin{bmatrix} 2 & 3 \\\\ 1 & 0 \\\\ 5 & 6 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 12 & 15 \\\\ 26 & 33 \end{bmatrix}$", "$\begin{bmatrix} -20 & -26 \\\\ -48 & -62 \end{bmatrix}$"), 
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