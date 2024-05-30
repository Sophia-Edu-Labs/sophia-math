#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ballonstart 🎈]

#v(40pt)

#only("1-")[
- Ballon in Uster auf 464 m über dem Meeresspiegel 🏔️
]

#v(20pt)

#only("2-")[
- Volumen der Gondel und Passagiere vernachlässigt 🧳👤
]

#v(20pt)

#only("3-")[
#text(size: 24pt)[Was ist das minimale Volumen des Ballons für den Start? 🤔]
]

#only("1")[
#voiceover("Betrachte einen Ballon in Uster auf einer Höhe von 464 Metern über dem Meeresspiegel.")
]

#only("2")[
#voiceover("Das Volumen der Gondel und der Passagiere kann vernachlässigt werden.")
]

#only("3")[
#voiceover("Was muss das minimale Volumen des Ballons sein, damit er abhebt?")
]

]#questionDef(
questionText: "Was ist das minimale Volumen $V$ des Ballons für den Start in Uster auf $464 \text{ m}$ über dem Meeresspiegel, wenn das Volumen der Gondel und Passagiere vernachlässigt wird?",
answerOptions: ("$V = 1088 \text{ m}^3$", "$V = 0 \text{ m}^3$"),  correctAnswerIndex: 0,
freeTextDetail: (
  fallbackOptionIndex: 1,
  answerOptionsEquality: (
    V: (
      roundingDecimalPlaces: 2,
      tolerance: none
    )
  ),
  answerOptionMatcher:("$V = \key{V} \text{ m}^3$"),
  answerOptionsTypes: (
    "V": "number"
  )
),
)