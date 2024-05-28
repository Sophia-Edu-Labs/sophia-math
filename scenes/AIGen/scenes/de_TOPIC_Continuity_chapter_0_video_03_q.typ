#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzwertfrage]
#v(40pt)

#only("1-")[
Finde den Grenzwert:
]

#v(20pt)

#only("2-")[
$lim_(x -> 1) (2x + 3)$
]

#only("1")[
#voiceover("Betrachte die folgende Grenzwertfrage.")
]

#only("2")[
#voiceover("Finde den Grenzwert der Funktion f von x gleich 2x plus 3, wenn x gegen 1 geht.")
]

#v(40pt)
]

#questionDef(
questionText: "Was ist der Wert von $\\lim_{x \\to 1} (2x + 3)$?",
answerOptions: ("$5$", "$6$"),
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