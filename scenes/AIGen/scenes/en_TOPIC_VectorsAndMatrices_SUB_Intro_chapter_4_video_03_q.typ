#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice adding matrices with a numeric exercise.")
  ]
  #text(size: 30pt, weight: "bold")[Matrix Addition]
  #v(40pt)

  #only("2-")[
    Add the following matrices:
    #v(20pt)
    $ mat(5, 6; 7, 8) + mat(1, 2; 3, 4) $
  ]

  #only("2")[
    #voiceover("Add the matrices five, six, seven, eight and one, two, three, four. Both matrices are two by two.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add the matrices $\begin{bmatrix} 5 & 6 \\\\ 7 & 8 \end{bmatrix}$ and $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$. What is the resulting matrix?", 
answerOptions: ("$\begin{bmatrix} 6 & 8 \\\\ 10 & 12 \end{bmatrix}$", "$\begin{bmatrix} -8 & -12 \\\\ -16 & -20 \end{bmatrix}$"), 
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