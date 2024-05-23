#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1-")[
#text(size: 30pt, weight: "bold")[Linear Mapping Exercise]
// The title "Linear Mapping Exercise" is shown on this slide
#v(40pt)
]

#only("2-")[
Given a linear mapping $T: R^2 -> R^2$ defined by:
#v(20pt)
$T(mat(x; y)) = mat(2x; 3y)$
]
// The given linear mapping is shown from slide 2 onward

#only("3-")[
#v(40pt)
Find:
#v(20pt)
$T(mat(1; 2)) = ?$
]
// The question asking to find T(mat(1; 2)) is shown from slide 3 onward

#only("1")[
#voiceover("Let's practice with a linear mapping exercise!")
]

#only("2")[
#voiceover("Given a linear mapping T from R2 to R2 defined by T of the vector x, y equals the vector 2x, 3y.")
]

#only("3")[
#voiceover("Find T of the vector 1, 2.")
]
]#questionDef(
questionText: "What is $T(\begin{pmatrix} 1 \\\\ 2 \end{pmatrix})$?",
answerOptions: ("$\begin{pmatrix} 2 \\\\ 6 \end{pmatrix}$", "$\begin{pmatrix} 3 \\\\ 5 \end{pmatrix}$", "$\begin{pmatrix} 1 \\\\ 2 \end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 2,
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