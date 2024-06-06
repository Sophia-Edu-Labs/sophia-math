#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Vereinfache den folgenden Ausdruck:] 
#v(20pt)
#only("2-")[$(27^(1/3))^2$]
#only("1")[
#voiceover("Lass uns eine Übung machen. Deine Aufgabe ist es, den folgenden Ausdruck zu vereinfachen:")
]
#only("2")[
#voiceover("27 hoch ein Drittel, alles zum Quadrat.")
]
]#questionDef(
questionText: "Was ist die vereinfachte Form von $(27^{1/3})^2$?",
answerOptions: ("$9$", "$81$"),
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