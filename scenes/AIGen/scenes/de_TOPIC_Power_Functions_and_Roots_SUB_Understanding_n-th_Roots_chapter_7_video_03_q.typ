#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Komplexe n-te Wurzeln]
#v(40pt)
#only("1")[
#voiceover("Betrachte die folgende Frage:")
]
#only("1-")[
Was ist $root(6, -64)$ in komplexer Form? 🤔
]
#only("2")[
#voiceover("Erinnere dich daran, dass n-te Wurzeln von negativen Zahlen, wenn n gerade ist, komplexe Zahlen sind.")
]
#only("3")[
#voiceover("Kannst du die komplexe Form der 6. Wurzel von minus 64 bestimmen?")
]
]#questionDef(
questionText: "Was ist $\sqrt[6]{-64}$ in komplexer Form?",
answerOptions: ("$-2i$", "$2i$"),
correctAnswerIndex: 1,
freeTextDetail: (
fallbackOptionIndex: 0,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}i$"),
answerOptionsTypes: (
"a": "number"
)
),
)