#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Integrationsübung]
#v(40pt)
#only("1-")[
Betrachte die Funktion:
#v(20pt)
$f(x) = x^4$
]
#only("1")[
#voiceover("Betrachte die Funktion f von x gleich x hoch 4.")
]
#only("2-")[
#v(20pt)
Finde:
#v(20pt)
$integral f(x) dif x = ?$
]
#only("2")[
#voiceover("Finde das Integral von f von x bezüglich x.")
]
#only("3-")[
#v(20pt)
💡 Hinweis: Potenzregel
]
#only("3")[
#voiceover("Hinweis: Verwende die Potenzregel für die Integration.")
]
]#questionDef(
  questionText: "Was ist $\int x^4 \, dx$?",
  answerOptions: ("$\frac{x^5}{5} + C$", "$\frac{x^4}{4} + C$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
      )
    ),
    answerOptionMatcher:("$\frac{\key{a}x^5}{\key{b}} + C$"),
    answerOptionsTypes: (
      "a": "number",
      "b": "number"
    )
  ),
)