#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1-")[
#text(size: 30pt, weight: "bold")[Matrix Elements]
]

#v(40pt)

#only("2-")[
Consider the matrix:
]

#v(20pt)

#only("3-")[
$mat(a_11, a_12, a_13; a_21, a_22, a_23)$
]

#v(40pt)

#only("4-")[
How many elements does this matrix have? 🤔
]

#only("1")[
#voiceover("Let's talk about the number of elements in a matrix.")
]

#only("2")[
#voiceover("Consider a matrix with two rows and three columns.")
]

#only("3")[
#voiceover("It could look something like this, with elements a sub 1 1, a sub 1 2, a sub 1 3 in the first row, and a sub 2 1, a sub 2 2, a sub 2 3 in the second row.")
]

#only("4")[
#voiceover("Now, here's a question for you: How many elements does this 2 by 3 matrix have in total?")
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "How many elements are in a 2x3 matrix?",
answerOptions: ("5", "6"),
correctAnswerIndex: 1,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("\key{a}"),
answerOptionsTypes: (
"a": "number"
)
),
)