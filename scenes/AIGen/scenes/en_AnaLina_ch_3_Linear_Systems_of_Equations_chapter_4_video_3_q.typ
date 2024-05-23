#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
// The title "Exercise" is shown on all slides
#v(40pt)

#only("1-")[Solve the linear system using the Gaussian Algorithm:]
// The instruction is shown from slide 1 onward
#v(20pt)

#only("2-")[
$x + y = 2$
$2x - y = 3$
]
// The linear system is shown from slide 2 onward

#only("1")[
#voiceover("Here's an exercise for you.")
]

#only("2")[
#voiceover("Solve the following linear system using the Gaussian Algorithm: x plus y equals 2, and 2x minus y equals 3.")
]
]#questionDef(
questionText: "Solve the linear system $x + y = 2$, $2x - y = 3$ using the Gaussian Algorithm.",
answerOptions: ("The solution is $x=\\frac{5}{3}$ and $y=\\frac{1}{3}$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)