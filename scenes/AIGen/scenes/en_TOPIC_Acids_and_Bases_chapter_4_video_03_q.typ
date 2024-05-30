#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pH and pOH]
#v(40pt)
#only("1-")[- pH measures the acidity of a solution 🧪]
#v(20pt)
#only("2-")[- pOH measures the basicity of a solution 🧴]
#v(20pt)
#only("3-")[- pH + pOH = 14 🧮]
#only("1")[
#voiceover("pH is a measure of the acidity of a solution.")
]
#only("2")[
#voiceover("On the other hand, pOH measures the basicity of a solution.")
]
#only("3")[
#voiceover("pH and pOH are related by the equation: pH plus pOH equals 14.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[If the pH of a solution is 5, what is the pOH?]
#only("1")[
#voiceover("Here's a question for you: If the pH of a solution is 5, what is the pOH?")
]
]#questionDef(
questionText: "If the pH of a solution is $5$, what is the pOH?",
answerOptions: ("$9$", "$5$"),
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