#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzübung]
#v(40pt)
#only("1-")[Gegeben sind zwei Funktionen:]
#v(20pt)
#only("2-")[- $f(x) = x^2$]
#v(20pt)
#only("3-")[- $g(x) = 2x$]
#only("1")[
#voiceover("Betrachte die folgenden zwei Funktionen:")
]
#only("2")[
#voiceover("f von x ist gleich x Quadrat")
]
#only("3")[
#voiceover("und g von x ist gleich 2x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[Finde den Grenzwert:]
#v(20pt)
#only("2-")[$\lim_{x \to 2} (f(x) + g(x)) = ?$]
#only("1")[
#voiceover("Die Frage lautet:")
]
#only("2")[
#voiceover("Finde den Grenzwert, wenn x gegen 2 strebt, von f von x plus g von x.")
]
]#questionDef(
questionText: "Was ist der Wert von $ \lim_{x \to 2} (f(x) + g(x)) $?",
answerOptions: ("$8$", "$6$"),
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