#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[
What is $root(4, 16/81)$? 🤔
]
#only("1")[
#voiceover("Consider the following exercise question: What is the fourth root of 16 over 81?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hint]
#v(40pt)
#only("1-")[
Remember: 
- The n-th root of a quotient is the quotient of the n-th roots 📏
]
#only("1")[
#voiceover("Here's a hint: Remember that the n-th root of a quotient is the quotient of the n-th roots.")
]
]#questionDef(
questionText: "What is $\sqrt[4]{\frac{16}{81}}$?",
answerOptions: ("$\frac{2}{3}$", "$\frac{1}{2}$"), \ncorrectAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$"),
answerOptionsTypes: (
"a": "number"  \n)
),
)