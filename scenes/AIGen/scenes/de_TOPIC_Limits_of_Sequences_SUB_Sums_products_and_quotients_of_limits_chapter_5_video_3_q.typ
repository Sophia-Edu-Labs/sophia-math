#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert des Zinseszinses]
#v(40pt)
#only("1-")[
- Betrachte die Folge $a_n = (1 + 1/n)^n$
]
#v(20pt)
#only("2-")[
- Diese stellt den Zinseszins dar 💰
]
#v(20pt)
#only("3-")[
- Finde $lim_(n -> infinity) a_n$ 🎯
]

#only("1")[
#voiceover("Betrachte die Folge a sub n gleich Klammer auf 1 plus 1 durch n Klammer zu hoch n.")
]

#only("2")[
#voiceover("Diese Folge stellt das Wachstum einer Investition unter Zinseszinsen dar, wobei n die Anzahl der Zinsperioden ist.")
]

#only("3")[
#voiceover("Deine Aufgabe ist es, den Grenzwert dieser Folge zu finden, wenn n gegen unendlich geht.")
]
]#questionDef(
questionText: "Was ist der Grenzwert der Folge $a_n = (1 + \frac{1}{n})^n$, wenn $n$ gegen unendlich geht?",
answerOptions: ("${e}$", "$1$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)