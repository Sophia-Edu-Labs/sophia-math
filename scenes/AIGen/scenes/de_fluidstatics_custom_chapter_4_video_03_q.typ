#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Heißluftballon 🎈]
#v(40pt)
#only("1-")[
- Am Boden auf 1550 m³ aufgeblasen
]
#v(20pt)
#only("2-")[
- Formel für Luftdichte: $rho_"air"(h) = a e^(-b h)$
]
#v(10pt)
#only("3-")[  
  - $a = 1.247$ kg/m³
  - $b = 0.000104$
]
#only("1")[
#voiceover("Betrachte einen Heißluftballon, der am Boden auf ein Volumen von 1550 Kubikmetern aufgeblasen ist.")
]
#only("2")[
#voiceover("Die Luftdichte variiert mit der Höhe gemäß der Formel rho air von h gleich a mal e hoch minus b mal h.")
]
#only("3")[  
#voiceover("Die Konstanten a und b sind mit 1.247 Kilogramm pro Kubikmeter und 0.000104 angegeben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage ❓]
#v(40pt)
#only("1-")[
Berechne die maximale Höhe, die der Ballon erreichen kann. 📏
]
#only("1")[
#voiceover("Berechne die maximale Höhe in Metern, die dieser Heißluftballon erreichen kann.")
]
]#questionDef(
questionText: "Was ist die maximale Höhe, die der Heißluftballon erreichen kann, in Metern? Verwende die gegebene Formel und die Konstanten.",
answerOptions: ("$2000$", "$1000$"),
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