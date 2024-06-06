#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Volumen eines Würfels]
#v(40pt)
#only("1-")[
- Gegeben: $V = s^3$
]
#v(20pt)
#only("2-")[
- $V = 27$ Kubikeinheiten
]
#v(20pt)
#only("3-")[
#text(weight: "bold")[Finde:] $s = ?$
]
#only("1")[
#voiceover("Betrachte einen Würfel, bei dem das Volumen V durch die Formel V gleich s hoch drei gegeben ist, wobei s die Seitenlänge des Würfels ist.")
]
#only("2")[
#voiceover("Wenn das Volumen des Würfels 27 Kubikeinheiten beträgt,")
]
#only("3")[
#voiceover("finde die Seitenlänge s des Würfels.")
]
]#questionDef(
questionText: "Was ist der Wert von $s$, der Seitenlänge des Würfels?",
answerOptions: ("$s = 3$", "$s = 9$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$s = \\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)