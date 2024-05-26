#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Quotienten]
#v(40pt)
#only("1-")[
Gegeben:
- $a_n = 1/n$
- $b_n = 2$
]
#v(20pt)
#only("2-")[
Finde: 
- $lim_(n -> infinity) (a_n / b_n)$
]

#only("1")[
#voiceover("Betrachte die Folgen a_n gleich 1 durch n und b_n gleich 2.")
]

#only("2")[
#voiceover("Finde den Grenzwert, wenn n gegen unendlich geht, des Quotienten a_n geteilt durch b_n.")
]
]#questionDef(
questionText: "Was ist der Wert von $\\lim_{n \\to \\infty} \\left( \\frac{a_n}{b_n} \\right)$, wobei $a_n = \\frac{1}{n}$ und $b_n = 2$?",
answerOptions: ("$0$", "$\\frac{1}{2}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)