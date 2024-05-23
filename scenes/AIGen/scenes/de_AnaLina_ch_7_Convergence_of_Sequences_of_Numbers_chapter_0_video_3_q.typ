#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel für eine Sequenz]
#v(40pt)
#only("1-")[
Betrachten Sie die Sequenz definiert durch:
]
#v(20pt)
#only("2-")[
$a_n = 2n + 1$
]
#v(40pt)
#only("3-")[
Finden Sie den 5. Term, d.h. $a_5$.
]
#only("1")[
#voiceover("Betrachten wir eine Sequenz, die durch eine Formel definiert ist.")
]
#only("2")[
#voiceover("Der n-te Term der Sequenz, a_n, wird durch 2n plus 1 gegeben.")
]
#only("3")[
#voiceover("Ihre Aufgabe ist es, den 5. Term dieser Sequenz zu finden, das heißt, a_5.")
]
]#questionDef(
questionText: "Was ist der Wert von $a_5$?",
answerOptions: ("11", "10", "9", "8"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 0,
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