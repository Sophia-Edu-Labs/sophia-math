#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "en")
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[
Find the area between the curves:
]
#only("2-")[
- $f(x) = 2x$
]
#only("3-")[
- $g(x) = x$
]
#only("4-")[
Over the interval:
]
#only("5-")[
- $[0, 1]$
]
#only("1")[#voiceover("Find the area between the following two curves:")]
#only("2")[#voiceover("f of x equals 2x")]
#only("3")[#voiceover("and g of x equals x")]
#only("4")[#voiceover("over the interval")]
#only("5")[#voiceover("0 to 1.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[
What is the area between the curves?
]
#v(40pt)
#only("2-")[
a) $1/6$
]
#v(10pt)
#only("3-")[
b) $1/3$
]
#v(10pt)
#only("4-")[
c) $1/2$
]
#v(10pt)
#only("5-")[
d) $1$
]
#only("1")[#voiceover("What is the area between the curves f of x equals 2x and g of x equals x over the interval 0 to 1?")]
#only("2")[#voiceover("Is it a) one sixth,")]
#only("3")[#voiceover("b) one third,")]
#only("4")[#voiceover("c) one half,")]
#only("5")[#voiceover("or d) 1?")]
]
#questionDef(
questionText: "What is the area between the curves $f(x) = 2x$ and $g(x) = x$ over the interval $[0, 1]$?",
answerOptions: ("$1/6$", "$1/3$", "$1/2$", "$1$"),
correctAnswerIndex: 2
)