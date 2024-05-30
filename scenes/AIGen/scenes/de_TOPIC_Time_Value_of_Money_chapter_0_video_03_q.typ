#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[🤔 Wenn Du heute 100 € hast und es zu einem jährlichen Zinssatz von 5 % investieren kannst, wie viel wird es in einem Jahr wert sein?]
#only("1")[
#voiceover("Betrachten wir die folgende Übung: Wenn Du heute 100 Euro hast und es zu einem jährlichen Zinssatz von 5 Prozent investieren kannst, wie viel wird es in einem Jahr wert sein?")
]
]#questionDef(
questionText: "Wenn Du heute 100 € hast und es zu einem jährlichen Zinssatz von 5% investieren kannst, wie viel wird es in einem Jahr wert sein?",
answerOptions: ("$105$€", "$110$€"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$€"),
answerOptionsTypes: (
"a": "number"
)
),
)