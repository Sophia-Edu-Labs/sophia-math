#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Compound Interest Limit]
#v(40pt)
#only("1-")[
- Consider the sequence $a_n = (1 + 1/n)^n$
]
#v(20pt)
#only("2-")[
- This represents compound interest 💰
]
#v(20pt)
#only("3-")[
- Find $lim_(n -> infinity) a_n$ 🎯
]

#only("1")[
#voiceover("Consider the sequence a sub n equals open parenthesis 1 plus 1 over n close parenthesis to the power of n.")
]

#only("2")[
#voiceover("This sequence represents the growth of an investment under compound interest, where n is the number of compounding periods.")
]

#only("3")[
#voiceover("Your task is to find the limit of this sequence as n approaches infinity.")
]
]#questionDef(
questionText: "What is the limit of the sequence $a_n = (1 + \frac{1}{n})^n$ as $n$ approaches infinity?",
answerOptions: ("${e}$", "$1$"),
correctAnswerIndex: 0,
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
"a": "number"
)
),
)