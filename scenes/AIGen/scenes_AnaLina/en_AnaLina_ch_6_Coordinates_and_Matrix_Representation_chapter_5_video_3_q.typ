#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping]
// The title "Linear Mapping" is shown on this slide
#v(40pt)
#only("1-")[
$T(x, y) = (2x, 3y)$
]
// The linear mapping T is shown from slide 1 onward
#only("1")[
#voiceover("Consider the linear mapping T, which maps the vector (x, y) to (2x, 3y).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[New Basis]
// The title "New Basis" is shown on this slide
#v(40pt)
#only("1-")[
$B = (mat(1; 1), mat(1; -1))$
]
// The new basis B is shown from slide 1 onward
#only("1")[
#voiceover("We want to find the matrix representation of T with respect to the new basis B, which consists of the vectors (1; 1) and (1; -1).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
// The title "Question" is shown on this slide
#v(40pt)
#only("1-")[
Find the matrix $[T]_B$ representing $T$ with respect to $B$.
]
// The question is posed from slide 1 onward
#only("1")[
#voiceover("Your task is to find the matrix [T]_B that represents the linear mapping T with respect to the basis B.")
]
]#questionDef(
questionText: "What is the matrix $[T]_B$ representing $T$ with respect to $B$?",
answerOptions: ("$\\begin{pmatrix} 2.5 & 0.5 \\\\ 0.5 & 1.5 \\end{pmatrix}$", "$\\begin{pmatrix} 2 & 0 \\\\ 0 & 3 \\end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\begin{pmatrix} \\key{a} & \\key{b} \\\\ \\key{c} & \\key{d} \\end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number",
"c": "number",
"d": "number"
)
),
)