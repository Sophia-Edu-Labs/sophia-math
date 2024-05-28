#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Slutsky Equation]

#v(40pt)

#only("1-")[Write the Slutsky equation for a price change in good $X$, where:]

#v(20pt)

#only("2-")[- $x_1$ is the new quantity demanded]

#v(10pt)

#only("3-")[- $x_0$ is the initial quantity demanded]

#v(10pt)

#only("4-")[- $x_s$ is the quantity demanded due to the substitution effect]

#only("1")[
#voiceover("Write the Slutsky equation for a price change in good X, where")
]

#only("2")[
#voiceover("x sub 1 is the new quantity demanded,")
]

#only("3")[
#voiceover("x sub 0 is the initial quantity demanded,")
]

#only("4")[
#voiceover("and x sub s is the quantity demanded due to the substitution effect.")
]

]#questionDef(
questionText: "Write the Slutsky equation for a price change in good $X$, where $x_1$ is the new quantity demanded, $x_0$ is the initial quantity demanded, and $x_s$ is the quantity demanded due to the substitution effect.",
answerOptions: ("The Slutsky equation is $x_1 - x_0 = (x_s - x_0) + (x_1 - x_s)$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)