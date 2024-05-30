#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck in Gebäuden 🌊]
#v(40pt)
#only("1-")[
- Der Druck variiert mit der Höhe aufgrund der Schwerkraft
]
#only("1")[
#voiceover("In Gebäuden variiert der Wasserdruck mit der Höhe aufgrund der Gravitationskraft, die auf die Wassersäule wirkt.")
]
#v(20pt)
#only("2-")[
- Der Überdruck steigt um etwa 1 bar pro 10 m Höhe
]
#only("2")[
#voiceover("Als Faustregel gilt, dass der Überdruck um etwa 1 bar pro 10 Meter Höhe zunimmt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 1 💧]
#v(40pt)
#only("1-")[
- Erdgeschoss: Überdruck beträgt 4,0 bar
- Vierter Stock: 14 m höher
]
#only("1")[
#voiceover("In dieser Übung erfahren wir, dass der Überdruck im Erdgeschoss 4,0 bar beträgt. Wir interessieren uns für den Überdruck im vierten Stock, der 14 Meter höher liegt.")
]
#v(20pt)
#only("2-")[
Wie hoch ist der Überdruck in der Wasserleitung im vierten Stock? 🤔
]
#only("2")[
#voiceover("Deine Aufgabe ist es zu bestimmen: Wie hoch ist der Überdruck in der Wasserleitung im vierten Stock?")
]
]#questionDef(
questionText: "Wie hoch ist der Überdruck in der Wasserleitung im vierten Stock, $14 \, \text{m}$ über dem Erdgeschoss, wenn der Überdruck im Erdgeschoss $4.0 \, \text{bar}$ beträgt?",
answerOptions: ("5.4 \, \text{bar}", "4.0 \, \text{bar}"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("\key{a} \, \text{bar}"),
answerOptionsTypes: (
"a": "number"
)
),
)