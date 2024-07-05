#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice matrix multiplication with square matrices.")
  ]
  #text(size: 30pt, weight: "bold")[Matrix Multiplication]
  #v(40pt)

  #only("2-")[
    Multiply the following matrices:
    #v(20pt)
    $ mat(1, 2; 3, 4) dot mat(2, 0; 1, 3) $
  ]

  #only(2)[
    #voiceover("Multiply the two by two matrices: one, two, three, four and two, zero, one, three.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$ and $\begin{bmatrix} 2 & 0 \\\\ 1 & 3 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 4 & 6 \\\\ 10 & 12 \end{bmatrix}$", "$\begin{bmatrix} -4 & -8 \\\\ -16 & -20 \end{bmatrix}$"), 
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