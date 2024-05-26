#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Folgen]
#v(40pt)
#only("1-")[Betrachte die Folgen:]
#v(20pt)
#only("2-")[- $a_n = 1/n$]
#v(10pt)
#only("3")[- $b_n = 2/n$]
#v(20pt)
#only("4-")[Finde: $lim_(n -> infinity) (a_n + b_n)$]

#only("1")[
#voiceover("Lass uns üben, den Grenzwert einer Summe von Folgen zu finden.")
]
#only("2")[
#voiceover("Wir haben die Folge a_n gleich 1 durch n,")
]
#only("3")[
#voiceover("und die Folge b_n gleich 2 durch n.")
]
#only("4")[
#voiceover("Deine Aufgabe ist es, den Grenzwert zu finden, wenn n gegen unendlich geht, von der Summe a_n plus b_n.")
]
]#questionDef(
questionText: "Was ist $\\lim_{n \\to \\infty} (a_n + b_n)$, gegeben $a_n = \\frac{1}{n}$ und $b_n = \\frac{2}{n}$?",
answerOptions: ("$0$", "$3$"),
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