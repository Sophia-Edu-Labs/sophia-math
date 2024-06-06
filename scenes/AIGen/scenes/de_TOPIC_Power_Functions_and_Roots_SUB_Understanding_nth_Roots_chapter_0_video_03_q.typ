#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[4. Wurzel von 16]
#v(40pt)
#only("1-")[Was ist die 4. Wurzel von 16?]
#v(20pt)
#only("2-")[Mit anderen Worten, löse für $x$:]
#v(20pt)
#only("3-")[$root(4,16) = x$]
#v(20pt)
#only("4-")[$x = ?$]

#only("1")[
#voiceover("Betrachten wir die folgende Frage: Was ist die 4. Wurzel von 16?")
]
#only("2")[
#voiceover("Mit anderen Worten, wir suchen eine Zahl x, so dass")
]
#only("3")[
#voiceover("die 4. Wurzel von 16 gleich x ist.")
]
#only("4")[
#voiceover("Also, was ist der Wert von x?")
]
]#questionDef(
questionText: "Was ist der Wert von $x$, wenn $\sqrt[4]{16} = x$?",
answerOptions: ("$2$", "$4$"),
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
"a": "number"
)
),
)