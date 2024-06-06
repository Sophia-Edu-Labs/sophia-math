#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 2]
#v(40pt)
#only("1-")[
Vereinfache den folgenden Ausdruck:
]
#v(20pt)
#only("2-")[
$8^(2/3) / 8^(1/3)$
]
#only("1")[
#voiceover("Lass uns das Vereinfachen von Ausdrücken mit rationalen Exponenten üben.")
]
#only("2")[
#voiceover("Vereinfache den Ausdruck 8 hoch 2/3 geteilt durch 8 hoch 1/3.")
]
#v(40pt)
#only("3-")[
🤔 Was ist das vereinfachte Ergebnis?
]
#only("3")[
#voiceover("Überlege, wie Du dieses Problem angehen würdest. Welche Regeln für Exponenten kannst Du hier anwenden?")
]
]#questionDef(
questionText: "Was ist das vereinfachte Ergebnis von $8^{2/3} / 8^{1/3}$?",
answerOptions: ("$8^{1/3}$", "$8^{3/2}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$8^{\key{a}/\key{b}}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)