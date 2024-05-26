#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert-Übung 🎯]
#v(40pt)
#only("1-")[
Betrachte die Folge:
]
#v(20pt)
#only("2-")[
$a_n = 2/n$
]
#v(40pt)
#only("3-")[
Finde:
]
#v(20pt)
#only("4-")[
$lim_(n -> infinity) a_n = ?$
]

#only("1")[
#voiceover("Lass uns das Finden von Grenzwerten üben! Hier ist eine Übung für Dich.")
]
#only("2")[
#voiceover("Betrachte die Folge a_n gleich 2 durch n.")
]
#only("3")[
#voiceover("Deine Aufgabe ist es zu finden...")
]
#only("4")[
#voiceover("den Grenzwert von a_n, wenn n gegen unendlich geht. Nimm Dir einen Moment Zeit, darüber nachzudenken!")
]
]#questionDef(
questionText: "Was ist $\\lim_{n \\to \\infty} a_n$, wobei $a_n = \\frac{2}{n}$?",
answerOptions: ("$0$", "$2$"),
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