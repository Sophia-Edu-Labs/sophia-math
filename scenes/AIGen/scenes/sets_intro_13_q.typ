#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Schnittmengen]
#v(40pt)
#only("1-")[
- $A = {1, 3, 5, 7, 9}$
]
#only("2-")[
- $B = {2, 3, 6, 9}$
]
#only("3-")[
- $C = {3, 4, 7, 9}$
]
#v(40pt)
#only("4-")[Finde die #text(weight: "bold")[Mächtigkeit] von
#text(size: 30pt)[$ |A sect B sect C| = ? $]
]
#only("1")[#voiceover("Gegeben sind die folgenden drei Mengen: A, bestehend aus den Elementen 1, 3, 5, 7 und 9,")]
#only("2")[#voiceover("B, bestehend aus den Elementen 2, 3, 6 und 9,")]
#only("3")[#voiceover("und C, bestehend aus den Elementen 3, 4, 7 und 9.")]
#only("4")[
#voiceover("Was ist die Mächtigkeit der Schnittmenge aller drei Mengen, also von A geschnitten mit B geschnitten mit C?")
]
]
#questionDef(
questionText: "Was ist die Mächtigkeit von $A \cap B \cap C$?",
// use latex!
answerOptions: ("$2$", "$0$"),
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
"a": "number",
)
),
)