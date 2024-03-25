#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[

#text(size: 30pt, weight: "bold")[Funktion]

#v(20pt)

#only("2-")[
#align(center)[#text()[$ f(x) = x^3 - 3x^2 + 4 $]]
]

#v(30pt)

#only("3")[
$f(x) = m x + b$
]

#only("4")[
#text(size: 30pt, weight: "bold")[Ansatz]
]
#v(40pt)
#only("5-")[- 1. Ableitung berechnen]
#only("6-")[- Geradengleichung bestimmen]


#only("1")[
#voiceover("Betrachte die Funktion")  
]
#only("2")[
#voiceover("f von x gleich x hoch drei minus drei x Quadrat plus vier.")
]

#only("3")[
#voiceover("Berechne die Gleichung der Tangente zum Graphen von f an der Stelle x gleich 2 in der Form f von x gleich m x + b.")
]

#only("4")[
#voiceover("Tipp: Bestimme zuerst")
]
#only("5")[
#voiceover("die Steigung m der Tangente mithilfe der Ableitung von f an der Stelle x gleich 2.")
]
#only("6")[
#voiceover("Dann setze x = 2 in die Gleichung y gleich m x + b ein, um den y-Achsenabschnitt b zu berechnen.")
]

]

#questionDef(
  questionText: "Was ist $m$, die Steigung der Tangente, und was ist $b$, der y-Achsenabschnitt der Tangente in der Gleichung $f(x) = mx + b$?",
  // use latex!
  answerOptions: ("$m=0, b=0$", "$m=1, b=1$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      m: (
        roundingDecimalPlaces: 2,
        tolerance: none
      )
    ),
    answerOptionMatcher:("$m=\\key{m}, b=\\key{b}$"),
    answerOptionsTypes: (
      "m": "number",
      "b": "number"  
    )
  ),
)