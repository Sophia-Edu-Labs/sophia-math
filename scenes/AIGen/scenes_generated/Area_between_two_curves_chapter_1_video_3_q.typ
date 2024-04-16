#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
#voiceover("Let's consider the following exercise:")
]
#text(size: 30pt, weight: "bold")[Area Between Two Curves]

#v(40pt)
#only("2-")[
- Given two functions $f(x)$ and $g(x)$
- Boundaries: $a$ and $b$
]
#only("2")[
#voiceover("We are given two functions, f of x and g of x, and the boundaries a and b.")
]
]

#questionDef(
questionText: "Write the general formula for the area between the curves $f(x)$ and $g(x)$, with boundaries $a$ and $b$.",
answerOptions: ("$A = \int_a^b [f(x) - g(x)] dif x$, where $f(x) >= g(x)$ on $[a, b]$", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)