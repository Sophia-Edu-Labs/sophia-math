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
    $ mat(1, 1; 1, 1) + mat(2, 2; 2, 2) $
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice matrix addition. Consider the following two 2-by-2 matrices: The first matrix has all entries equal to 1, and the second matrix has all entries equal to 2. Your task is to add these matrices together.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add the matrices $\begin{bmatrix} 1 & 1 \\\\ 1 & 1 \end{bmatrix}$ and $\begin{bmatrix} 2 & 2 \\\\ 2 & 2 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 3 \\\\ 3 & 3 \end{bmatrix}$", "$\begin{bmatrix} -2 & -2 \\\\ -2 & -2 \end{bmatrix}$"), 
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