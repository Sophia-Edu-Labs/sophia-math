#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Liftoff 🎈]

#v(40pt)

#only("1-")[
- Balloon in Uster at 464 m above sea level 🏔️
]

#v(20pt)

#only("2-")[
- Gondola and passenger volume neglected 🧳👤
]

#v(20pt)

#only("3-")[
#text(size: 24pt)[What is the minimum volume of the balloon for liftoff? 🤔]
]

#only("1")[
#voiceover("Consider a balloon in Uster at an altitude of 464 meters above sea level.")
]

#only("2")[
#voiceover("The volume of the gondola and passengers can be neglected.")
]

#only("3")[
#voiceover("What must be the minimum volume of the balloon for it to lift off?")
]

]#questionDef(
questionText: "What is the minimum volume $V$ of the balloon for liftoff in Uster at $464 \text{ m}$ above sea level, neglecting the volume of the gondola and passengers?",
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