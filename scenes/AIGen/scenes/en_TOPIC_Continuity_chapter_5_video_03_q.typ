#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's consider the function")
]

#text(size: 30pt, weight: "bold")[Continuous Extendability]

#v(40pt)

#only("2-")[#text()[$ f(x) = (x^2 - 1)/(x - 1) $]]

#v(40pt)

#only("3-")[Is $f(x)$ continuously extendable at $x = 1$? 🤔]

#only("2")[
#voiceover("f of x equals x squared minus one divided by x minus one.")
]

#only("3")[
#voiceover("Is the function f continuously extendable at x equals one?")
]

]#questionDef(
questionText: "Is the function $f(x) = \frac{x^2 - 1}{x - 1}$ continuously extendable at $x = 1$?",
answerOptions: ("Yes, $f(x)$ is continuously extendable at $x = 1$.", "No, $f(x)$ is not continuously extendable at $x = 1$."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)