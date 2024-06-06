#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's try simplifying this expression with a rational exponent:")
]
#text(size: 30pt, weight: "bold")[Simplify]
// The title "Simplify" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Twenty-seven eighths raised to the power of two thirds.")
]
#only("2-")[
$ (27/8)^(2/3) $
]
// The expression to simplify is shown from slide 2 onward
#v(30pt)
#only("3")[
#voiceover("Can you work out this simplification?")
]
#only("3-")[
👀 ✏️ 🤔
]
// Emojis encouraging the viewer to try the problem are shown from slide 3 onward
]#questionDef(
  questionText: "What is the simplified form of $(\\frac{27}{8})^{\\frac{2}{3}}$?", \n  answerOptions: ("$\\frac{9}{4}$", "$1$"),
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
      "a": "number"  \n    )
  ),
)