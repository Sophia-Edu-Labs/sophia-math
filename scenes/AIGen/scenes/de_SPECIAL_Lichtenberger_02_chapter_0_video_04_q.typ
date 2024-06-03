#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulikheber-Übung]
#v(40pt)
#only("1-")[
- Pumpenkolbenfläche: 5,0 cm²
- Presskolbenfläche: 400 cm² 
- Hubhöhe: 50 cm
]
#only("1")[
#voiceover("Betrachte einen Hydraulikheber mit einer Pumpenkolbenfläche von 5,0 Quadratzentimetern, einer Presskolbenfläche von 400 Quadratzentimetern und einer Hubhöhe von 50 Zentimetern.")
]
#v(20pt)
#only("2-")[
#text(fill: aqua)[Wie oft muss der Pumpenkolben abgesenkt werden, um den Presskolben um 2,0 m anzuheben? 🤔]
]
#only("2")[
#voiceover("Die Frage ist: Wie oft muss der Pumpenkolben abgesenkt werden, um den Presskolben um 2,0 Meter anzuheben?")
]
]#questionDef(
  questionText: "Wie oft muss der Pumpenkolben abgesenkt werden, wenn die Hubhöhe $50 \, \text{cm}$ beträgt?",
  answerOptions: ("$320$", "$80$"),
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