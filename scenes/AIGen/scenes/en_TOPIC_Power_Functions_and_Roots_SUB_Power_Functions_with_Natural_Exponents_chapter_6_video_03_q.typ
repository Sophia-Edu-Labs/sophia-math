#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Integration Exercise]
#v(40pt)
#only("1-")[
Consider the function:
#v(20pt)
$f(x) = x^4$
]
#only("1")[
#voiceover("Consider the function f of x equals x to the power of 4.")
]
#only("2-")[
#v(20pt)
Find:
#v(20pt)
$integral f(x) dif x = ?$
]
#only("2")[
#voiceover("Find the integral of f of x with respect to x.")
]
#only("3-")[
#v(20pt)
💡 Hint: Power Rule
]
#only("3")[
#voiceover("Hint: Use the power rule for integration.")
]
]#questionDef(
  questionText: "What is $\int x^4 \, dx$?",
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