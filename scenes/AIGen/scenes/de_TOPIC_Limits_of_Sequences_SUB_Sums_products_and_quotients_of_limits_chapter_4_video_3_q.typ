#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Gegeben:]
#v(20pt)
#only("2-")[- $a_n = 1/n$]
#v(10pt)
#only("3-")[- $b_n = 2/n^2$]
#v(20pt)
#only("4-")[Finde: $lim_(n -> infinity) (a_n + b_n) / a_n$]
#only("1")[
#voiceover("Betrachten wir die folgende Übung.")
]
#only("2")[
#voiceover("Gegeben ist die Folge a index n gleich 1 durch n,")
]
#only("3")[
#voiceover("und die Folge b index n gleich 2 durch n Quadrat.")
]
#only("4")[
#voiceover("Unsere Aufgabe ist es, den Grenzwert zu finden, wenn n gegen unendlich geht, von der Summe von a index n und b index n, geteilt durch a index n.")
]
]#questionDef(
questionText: "Was ist der Wert des Grenzwerts $\\lim_{n \\to \\infty} \\frac{a_n + b_n}{a_n}$, wobei $a_n = \\frac{1}{n}$ und $b_n = \\frac{2}{n^2}$?",
answerOptions: ("$1$", "$2$"),
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