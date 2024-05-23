#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping Exercise]
#v(40pt)
#only("1-")[
Consider the linear mapping:
#v(20pt)
$T: R^2 -> R^2$
#v(10pt)  
$T(mat(x; y)) = mat(x + y; x - y)$
]
#only("1")[
#voiceover("Consider the following linear mapping T from R 2 to R 2, where T of the vector x, y is defined as the vector x plus y, x minus y.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question 🤔]
#v(40pt)
#only("1-")[
Find:
#v(20pt)
$T(mat(3; 4))$
]
#only("1")[
#voiceover("Your task is to find T of the vector 3, 4. That is, what vector do you get when you apply the linear mapping T to the vector 3, 4?")
]
]#questionDef(
questionText: "What is $T\left(\begin{pmatrix}3 \\\\ 4\end{pmatrix}\right)$?",
answerOptions: ("$\begin{pmatrix}7 \\\\ -1\end{pmatrix}$", "$\begin{pmatrix}12 \\\\ 12\end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\begin{pmatrix}\key{a} \\\\ \key{b}\end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)