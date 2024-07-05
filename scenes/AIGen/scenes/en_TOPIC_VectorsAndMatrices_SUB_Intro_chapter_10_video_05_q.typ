#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Addition]
  #v(40pt)

  #only("1-")[
    Add the following matrices:
    #v(20pt)
    $ mat(1, 2, 3; 4, 5, 6) + mat(7, 8, 9; 10, 11, 12) $
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice matrix addition. Consider the two given 2-by-3 matrices. Your task is to add these matrices. Remember, matrix addition is performed element-wise.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add the matrices $\begin{bmatrix} 1 & 2 & 3 \\\\ 4 & 5 & 6 \end{bmatrix}$ and $\begin{bmatrix} 7 & 8 & 9 \\\\ 10 & 11 & 12 \end{bmatrix}$. What is the resulting matrix?", 
answerOptions: ("$\begin{bmatrix} 8 & 10 & 12 \\\\ 14 & 16 & 18 \end{bmatrix}$", "$\begin{bmatrix} -12 & -16 & -20 \\\\ -24 & -28 & -32 \end{bmatrix}$"), 
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
e: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
f: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} & \key{c} \\\\ \key{d} & \key{e} & \key{f} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
"e": "number",
"f": "number",
) 
), 
)