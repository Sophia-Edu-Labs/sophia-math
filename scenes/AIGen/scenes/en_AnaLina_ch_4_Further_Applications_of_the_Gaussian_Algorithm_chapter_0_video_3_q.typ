#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rank of a Matrix]
#v(40pt)
#only("1-")[
Consider the matrix:
#v(20pt)
$mat(1, 2; 3, 6)$
]
#only("1")[
#voiceover("Consider this 2 by 2 matrix with elements 1, 2, 3, and 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
What is the rank of this matrix? 🤔
]
#only("1")[
#voiceover("What is the rank of this matrix?")
]
]#questionDef(
questionText: "What is the rank of the matrix $ \begin{pmatrix} 1 & 2 \\\\ 3 & 6 \end{pmatrix} $?",
answerOptions: ("1", "2"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)