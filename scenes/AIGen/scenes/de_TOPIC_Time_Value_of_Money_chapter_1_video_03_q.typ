#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Frage zum Barwert]
#v(40pt)
#only("1-")[
- Gegeben:
  - Endwert: 100 € 💰
  - Zeit: 1 Jahr ⏳
  - Abzinsungssatz: 5% 📉
]
#v(20pt)
#only("2-")[
- Frage: Was ist der Barwert? 🤔
]
#only("1")[
#voiceover("Betrachte folgendes Szenario: Du erhältst in einem Jahr 100 Euro. Der Abzinsungssatz beträgt 5 Prozent.")
]
#only("2")[
#voiceover("Was ist der Barwert dieser zukünftigen Summe?")
]
]#questionDef(
questionText: "Was ist der Barwert von 100 €, die in einem Jahr erhalten werden, wenn der Abzinsungssatz 5% beträgt?",
answerOptions: ("$95$€", "$105$€"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: 1.000001
)
),
answerOptionMatcher:("$\key{a}$€"),
answerOptionsTypes: (
"a": "number"
)
),
)