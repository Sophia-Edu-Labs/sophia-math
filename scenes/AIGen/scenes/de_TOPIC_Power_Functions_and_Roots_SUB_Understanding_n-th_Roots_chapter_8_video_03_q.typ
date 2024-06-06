#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Volumen eines Würfels 📦]
#v(40pt)
#only("1-")[
- Gegeben: Volumen $= 27$ Kubikeinheiten
]
#v(20pt)
#only("2-")[
- Formel: $V = s^3$, wobei $s$ die Seitenlänge ist
]
#only("1")[
#voiceover("Betrachte einen Würfel mit einem Volumen von 27 Kubikeinheiten.")
]
#only("2")[
#voiceover("Erinnere dich daran, dass das Volumen eines Würfels durch die Formel V gleich s hoch drei gegeben ist, wobei s die Länge einer Seite ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage ❓]
#v(40pt)
#only("1-")[
Wenn $V = 27$ ist, was ist der Wert von $s$?
]
#only("1")[
#voiceover("Die Frage lautet: Wenn das Volumen 27 Kubikeinheiten beträgt, wie lang ist eine Seite des Würfels?")
]
]#questionDef(
questionText: "Wenn das Volumen eines Würfels $27$ Kubikeinheiten beträgt, wie lang ist eine Seite?",
answerOptions: ("$3$ Einheiten", "$9$ Einheiten"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$ Einheiten"),
answerOptionsTypes: (
"a": "number"
)
),
)