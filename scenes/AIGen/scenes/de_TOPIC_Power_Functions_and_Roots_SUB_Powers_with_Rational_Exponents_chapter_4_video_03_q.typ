#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachen]
#v(40pt)

#only("1-")[
$(-16)^(1/4)$
]
// Der Ausdruck, der vereinfacht werden soll, wird ab Folie 1 angezeigt

#v(40pt)

#only("2-")[
🤔 Vereinfache den Ausdruck
]
// Die Anweisung, den Ausdruck zu vereinfachen, wird ab Folie 2 angezeigt

#only("1")[
#voiceover("Betrachte den Ausdruck minus sechzehn hoch ein Viertel.")
]

#only("2")[
#voiceover("Kannst du diesen Ausdruck vereinfachen?")
]
]#questionDef(
questionText: "Was ist die vereinfachte Form von $(-16)^{1/4}$?",
answerOptions: ("$2i$", "$2$"),
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
"a": "text"
)
),
)