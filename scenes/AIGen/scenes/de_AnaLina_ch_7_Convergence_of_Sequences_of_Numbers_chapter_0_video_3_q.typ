#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel einer Sequenz]
#v(40pt)
#only("1-")[
Betrachte die Sequenz definiert durch:
]
#v(20pt)
#only("2-")[
$a_n = 2n + 1$
]
#v(40pt)
#only("3-")[
Finde das 5. Glied, d.h. $a_5$.
]
#only("1")[
#voiceover("Betrachten wir eine Sequenz, die durch eine Formel definiert ist.")
]
#only("2")[
#voiceover("Das n-te Glied der Sequenz, a_n, wird durch 2n plus 1 gegeben.")
]
#only("3")[
#voiceover("Deine Aufgabe ist es, das 5. Glied dieser Sequenz zu finden, also a_5.")
]
]#questionDef(
questionText: "Was ist der Wert von $a_5$?",
answerOptions: ("$a_5=11$", "$a_5=0$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$a_5=\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)