#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Bewässerungsdurchflussrate]
#v(40pt)

#only("1-")[
🚰 Bewässerung eines 1-Hektar-Feldes
]

#only("2-")[
💧 Benötigt 5 mm Wasser pro Tag
]

#only("3-")[
❓ Erforderliche Durchflussrate in Litern pro Sekunde?
]

#only("1")[
#voiceover("Betrachte das Problem der Bewässerung eines 1-Hektar-Feldes.")
]

#only("2")[
#voiceover("Das Feld benötigt 5 Millimeter Wasser pro Tag.")  
]

#only("3")[
#voiceover("Was ist die erforderliche Wasserdurchflussrate in Litern pro Sekunde, um diese Wassermenge bereitzustellen?")
]
]#questionDef(
questionText: "Was ist die erforderliche Wasserdurchflussrate in Litern pro Sekunde, um das 1-Hektar-Feld mit 5 mm Wasser pro Tag zu bewässern?",
answerOptions: ("$0.5787$ L/s", "$1$ L/s"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 4,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ L/s"),
answerOptionsTypes: (
"a": "number"
)
),
)