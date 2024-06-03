#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem des Ballonaufstiegs]
#v(40pt)
#only("1-")[
- Ballon zu Beginn in Uster auf 1550 m³ aufgeblasen 🎈
]
#v(20pt)
#only("2-")[
- Volumen bleibt beim Aufstieg konstant 📏
]
#v(40pt)
#only("3-")[
❓ Wie hoch kann der Ballon steigen? 🌄
]
#only("1")[
#voiceover("Betrachte einen Heißluftballon, der zu Beginn in Uster auf ein Volumen von 1550 Kubikmetern aufgeblasen wird.")
]
#only("2")[
#voiceover("Das Volumen des Ballons bleibt beim Aufstieg konstant.")
]
#only("3")[
#voiceover("Die Frage ist: Wie hoch kann dieser Ballon steigen?")
]
]#questionDef(
questionText: "Wie hoch kann der Ballon maximal steigen, wenn sein Anfangsvolumen $1550 \, \text{m}^3$ beträgt?",
answerOptions: ("$2000 \, \text{m}$", "$1000 \, \text{m}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a} \, \text{m}$"),
answerOptionsTypes: (
"a": "number"
)
),
)