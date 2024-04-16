#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[
- Consider the curves:
  - $f(x) = e^x$
  - $g(x) = ln(x)$
- Over the interval $[1, e]$
]
#only("1")[
#voiceover("Consider the curves f of x equals e to the power of x and g of x equals the natural logarithm of x over the interval from 1 to e.")
]
#only("2")[
#voiceover("Write an integral expression to find the area between these two curves.")
]
]

#questionDef(
questionText: "Write an integral expression to find the area between the curves $f(x) = e^x$ and $g(x) = ln(x)$ over the interval $[1, e]$.",
// use latex!
answerOptions: ("$integral_1^e [e^x - ln(x)] dif x$", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)