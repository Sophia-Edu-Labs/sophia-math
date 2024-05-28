#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Minimum Value]
#v(40pt)
#only("1-")[
Consider the function:
]
#v(20pt)
#only("2-")[
$f(x) = x^2 - 4x + 7$
]
#v(40pt)
#only("3-")[
Find the minimum value of $f(x)$. 🤔
]
#only("1")[
#voiceover("Let's consider a quadratic function.")
]
#only("2")[
#voiceover("The function is f of x equals x squared minus 4x plus 7.")
]
#only("3")[
#voiceover("Your task is to find the minimum value of this function. Think about how you would approach this problem!")
]
]
#questionDef(
questionText: "What is the minimum value of the function $f(x) = x^2 - 4x + 7$?",
answerOptions: ("$3$", "$7$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)