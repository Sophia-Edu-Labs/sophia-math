#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Consider the absolute value function")
]

#text(size: 30pt, weight: "bold")[Continuity Exercise]
// The title "Continuity Exercise" is shown on all slides

#v(40pt)

#only("2-")[#text()[$ f(x) = |x| $]]
// The function f(x) is shown from slide 2 onward

#v(40pt)

#only("3-")[Is $f(x)$ continuous at $x = 0$? 🤔]
// The question "Is f(x) continuous at x = 0?" is shown from slide 3 onward

#only("2")[
#voiceover("f of x equals the absolute value of x.")
]

#only("3")[
#voiceover("Is the function f continuous at x equals zero?")
]

]#questionDef(
questionText: "Is the function $f(x) = |x|$ continuous at $x = 0$?",
answerOptions: ("Yes, $f(x)$ is continuous at $x = 0$.", "No, $f(x)$ is not continuous at $x = 0$."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)