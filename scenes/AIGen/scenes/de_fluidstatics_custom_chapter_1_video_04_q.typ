#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck 💧]
#v(40pt)
#only("1-")[- Druck im Erdgeschoss: 4 bar]
#v(20pt)
#only("2-")[- Wasserstand sinkt um 2 m]
#v(20pt)
#only("3-")[- Berechne den neuen Druck mit:
  $ p = rho dot g dot h $]
#only("1")[
#voiceover("Betrachte ein Gebäude, bei dem der Wasserdruck im Erdgeschoss 4 bar beträgt.")
]
#only("2")[
#voiceover("Wenn der Wasserstand im Reservoir um 2 Meter sinkt,")
]
#only("3")[
#voiceover("berechne den neuen Wasserdruck im Erdgeschoss mit der Formel p gleich rho mal g mal h.")
]
]#questionDef(

questionText: "Was ist der neue Wasserdruck im Erdgeschoss in bar?",
answerOptions: ("$3.8038$ bar", "$5.8038$ bar"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 4,
tolerance: 0.1
)
),
answerOptionMatcher:("$\key{a}$ bar"),
answerOptionsTypes: (
"a": "number"
)
),
)