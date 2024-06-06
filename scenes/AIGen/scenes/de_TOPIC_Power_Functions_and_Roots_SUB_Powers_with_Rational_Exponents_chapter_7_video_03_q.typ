#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Löse die Gleichung]
#v(40pt)
#only("1")[
#voiceover("Betrachten wir die Gleichung")
]
#only("1-")[
$ x^(2/3) = 9 $
]
#only("2")[
#voiceover("Löse diese Gleichung für x.")
]
#v(40pt)
#only("3-")[
📝 Deine Aufgabe: Löse für $x$
]
#only("3")[
#voiceover("Jetzt bist du dran. Löse die Gleichung für x.")
]
]#questionDef(
questionText: "Löse die Gleichung $x^{2/3} = 9$ für $x$.",
answerOptions: ("$x=27$", "$x=9$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$x=\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)