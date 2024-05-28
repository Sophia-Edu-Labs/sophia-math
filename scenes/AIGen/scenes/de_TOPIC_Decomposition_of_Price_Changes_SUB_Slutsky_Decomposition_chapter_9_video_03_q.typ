#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Minimalwert]
#v(40pt)
#only("1-")[
Betrachte die Funktion:
]
#v(20pt)
#only("2-")[
$f(x) = x^2 - 4x + 7$
]
#v(40pt)
#only("3-")[
Finde den Minimalwert von $f(x)$. 🤔
]
#only("1")[
#voiceover("Betrachten wir eine quadratische Funktion.")
]
#only("2")[
#voiceover("Die Funktion ist f von x gleich x Quadrat minus 4x plus 7.")
]
#only("3")[
#voiceover("Deine Aufgabe ist es, den Minimalwert dieser Funktion zu finden. Überlege, wie Du dieses Problem angehen würdest!")
]
]
#questionDef(
questionText: "Was ist der Minimalwert der Funktion $f(x) = x^2 - 4x + 7$?",
answerOptions: ("$3$", "$7$"),
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