#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplify]
#v(40pt)
#only("1-")[
$root(4, 81)$
]
#v(20pt)
#only("2-")[
= $root(4, 3^4)$
]
#v(20pt)
#only("3-")[
= $3^(4/4)$
]
#v(20pt)
#only("4-")[
= $3^1$
]
#v(20pt)
#only("5-")[
= 3
]
#only("1")[
#voiceover("Consider the expression: the fourth root of 81.")
]
#only("2")[
#voiceover("We can rewrite 81 as 3 to the power of 4.")
]
#only("3")[
#voiceover("Now, using the property of roots, we can bring the exponent to the front and divide it by 4.")
]
#only("4")[
#voiceover("4 divided by 4 is 1.")
]
#only("5")[
#voiceover("So, the fourth root of 81 simplifies to 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
What is the simplified value of $root(4, 81)$? 🤔
]
// The question is posed from slide 1 onward
#only("1")[
#voiceover("Now it's your turn. What is the simplified value of the fourth root of 81?")
]
]#questionDef(
questionText: "What is the simplified value of $\\sqrt[4]{81}$?",
answerOptions: ("3", "9"),
correctAnswerIndex: 0,
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