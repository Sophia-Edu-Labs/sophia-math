#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Right-hand Limit]
// The title "Right-hand Limit" is shown on all slides
#v(40pt)
#only("2-")[Consider the function:]
// "Consider the function:" is shown from slide 2 onward
#v(20pt)
#only("3-")[#text()[$ f(x) = 1/x $]]
// The function f(x) is shown from slide 3 onward
#v(40pt)
#only("4-")[Find the right-hand limit as $x$ approaches 0 👉]
// The question "Find the right-hand limit as x approaches 0" is shown from slide 4 onward

#only("1")[
#voiceover("Let's practice finding a right-hand limit.")
]
#only("2")[
#voiceover("Consider the function")
]
#only("3")[
#voiceover("f of x equals one over x.")
]
#only("4")[
#voiceover("Find the right-hand limit as x approaches zero.")
]
]#questionDef(
questionText: "What is the right-hand limit of $f(x) = \frac{1}{x}$ as $x$ approaches $0$?",
answerOptions: ("The right-hand limit of $f(x) = \frac{1}{x}$ as $x$ approaches $0$ is $\infty$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)