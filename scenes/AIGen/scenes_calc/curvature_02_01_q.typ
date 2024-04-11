#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Wendepunkt bestimmen]
#v(40pt)

#only("1-")[$ f(x) = 2x^3 - 4x $]

#only("1")[
#voiceover("Gegeben ist die Funktion f von x gleich zwei x hoch drei minus vier x. Berechne den Wendepunkt dieser Funktion.")
]
]

#questionDef(
questionText: "An welcher Stelle hat die Funktion $f(x) = 2x^3 - 4x$ einen Wendepunkt?", 
  // use latex!
  answerOptions: ("$x=0$", "$x=1$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$x=\key{a}$"),
      answerOptionsTypes: (
        "a": "number",
      )
  ),
)