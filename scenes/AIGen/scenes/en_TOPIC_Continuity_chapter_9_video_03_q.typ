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

#text(size: 30pt, weight: "bold")[Continuity]

#v(40pt)

#only("2-")[#text()[$ f(x) = x^3 - 3x + 2 $]]

#v(40pt)

#only("3-")[Is $f(x)$ continuous at $x = 1$? 🤔]

#only("2")[
#voiceover("f of x equals x cubed minus three x plus two.")
]

#only("3")[
#voiceover("Is the function f continuous at x equals one?")
]

]#questionDef(
questionText: "Is the function $f(x) = x^3 - 3x + 2$ continuous at $x = 1$?",
answerOptions: ("Yes, $f(x)$ is continuous at $x = 1$.", "No, $f(x)$ is not continuous at $x = 1$."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)