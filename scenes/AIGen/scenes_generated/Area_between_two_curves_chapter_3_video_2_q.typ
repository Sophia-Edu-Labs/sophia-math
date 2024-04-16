#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Curves]
#v(40pt)
#only("1-")[
Consider the curves:
- $f(x) = x^3$
- $g(x) = x^2$
]
#v(40pt)
#only("2-")[
Over the interval $[-1, 1]$
]
#v(40pt)
#only("3-")[
What is the area between the curves?
]
#v(40pt)
#only("4-")[
a) $0$
b) $1/6$
c) $1/3$
d) $1/2$
]
#only("1")[#voiceover("Consider the curves f of x equals x cubed and g of x equals x squared.")]
#only("2")[#voiceover("We want to find the area between these curves over the interval from negative 1 to 1.")]
#only("3")[#voiceover("What is the area between the curves?")]
#only("4")[#voiceover("Is it a 0, b) one over six, c) one third, or d) one half?")]
]
#questionDef(
questionText: "What is the area between the curves $f(x) = x^3$ and $g(x) = x^2$ over the interval $[-1, 1]$?",
answerOptions: ("$0$", "$1/6$", "$1/3$", "$1/2$"),
correctAnswerIndex: 0
)