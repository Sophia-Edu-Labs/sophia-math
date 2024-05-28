#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Folge]
#v(40pt)
#only("1-")[
Betrachte die Folge:
]
#v(20pt)
#only("2-")[
$b_n = 2n/(n+1)$
]
#only("1")[
#voiceover("Betrachte die folgende Folge:")
]
#only("2")[
#voiceover("b Index n gleich 2n durch n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Finde den Grenzwert der Folge, wenn $n$ gegen $infinity$ geht:
]
#v(20pt)
#only("2-")[
$lim_(n->infinity) b_n = ?$
]
#only("1")[
#voiceover("Finde den Grenzwert dieser Folge, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Mit anderen Worten, was ist der Grenzwert von b Index n, wenn n gegen unendlich geht?")
]
]#questionDef(
questionText: "Was ist $\lim_{n \\to \infty} b_n$?",
answerOptions: ("$2$", "$0$"),
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