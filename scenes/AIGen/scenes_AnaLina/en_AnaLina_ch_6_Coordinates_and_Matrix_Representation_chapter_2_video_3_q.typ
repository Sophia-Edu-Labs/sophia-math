#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation]
#v(40pt)
#only("1-")[Given the linear mapping:]
#v(20pt)
#only("2-")[$T: RR^2 -> RR^2$]
#v(20pt)
#only("3-")[$T(x, y) = (2x, 3y)$]
#v(40pt)
#only("4-")[What is the matrix representation of $T$? 🤔]

#only("1")[
#voiceover("Consider the following problem:")
]
#only("2")[
#voiceover("We have a linear mapping T from R squared to R squared,")
]
#only("3")[
#voiceover("defined by T of x, y equals 2x, 3y.")
]
#only("4")[
#voiceover("Your task is to find the matrix representation of T.")
]
]#questionDef(
questionText: "What is the matrix representation of $T$?",
answerOptions: ("$\begin{pmatrix} 2 & 0 \\\\ 0 & 3 \end{pmatrix}$", "$\begin{pmatrix} 2 & 3 \\\\ 0 & 0 \end{pmatrix}$", "$\begin{pmatrix} 1 & 0 \\\\ 0 & 1 \end{pmatrix}$", "$\begin{pmatrix} 0 & 2 \\\\ 3 & 0 \end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\begin{pmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number",
"c": "number",
"d": "number"
)
),
)