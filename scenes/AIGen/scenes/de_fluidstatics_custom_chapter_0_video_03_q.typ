#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Pumpenkraft]
#v(40pt)
#only("1-")[
- Gegeben:
  - Fläche des Pumpenkolbens: 5 cm² 🔧
  - Druck: 1471500 Pa 🌡️
]
#v(20pt)
#only("2-")[
- Formel: $ F = p \cdot A $
  - $F$: Kraft (N) 💪
  - $p$: Druck (Pa)
  - $A$: Fläche (m²)
]
#v(20pt)

#only("1")[
#voiceover("Es ist gegeben, dass die Fläche des Pumpenkolbens 5 Quadratzentimeter beträgt und der Druck 1471500 Pascal ist.")
]

#only("2")[
#voiceover("Um die Kraft zu berechnen, können wir die Formel F gleich p mal A verwenden, wobei F die Kraft in Newton, p der Druck in Pascal und A die Fläche in Quadratmetern ist.")
]

#only("3")[
#voiceover("Bestimme nun die notwendige Kraft der Pumpe in Newton.")
]
]#questionDef(
  questionText: "Was ist die notwendige Kraft der Pumpe in Newton?",
  answerOptions: ("$735.75$", "$147.15$"),
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