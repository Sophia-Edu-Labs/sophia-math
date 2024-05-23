#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Vector Multiplication]
#v(40pt)

#only("1-")[
Given:
- Matrix $A = mat(2, 0; 0, 3)$
- Vector $v = mat(1; 2)$
]
// The given matrix A and vector v are shown from slide 1 onward

#v(20pt)

#only("2-")[
Find the image of $v$ under the linear mapping represented by $A$.
]
// The question to find the image of v is shown from slide 2 onward

#only("1")[
#voiceover("Consider the matrix A equals the 2 by 2 matrix with elements 2, 0, 0, and 3, and the vector v equals the column vector with elements 1 and 2.")
]

#only("2")[
#voiceover("Find the image of the vector v under the linear mapping represented by the matrix A.")
]

]#questionDef(
questionText: "What is the image of $v$ under the linear mapping represented by $A$?",
answerOptions: ("$\begin{pmatrix} 2 \\\\ 6 \end{pmatrix}$", "$\begin{pmatrix} 5 \\\\ 2 \end{pmatrix}$", "$\begin{pmatrix} 2 \\\\ 0 \end{pmatrix}$", "$\begin{pmatrix} 0 \\\\ 6 \end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)