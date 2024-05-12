#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Price Standard Deviation]
#v(40pt)
#only("1-")[Consider the following daily closing prices of a stock:]
#v(20pt)
#only("2-")[
- $[150, 152, 149, 153, 148]$
]
#only("1")[
#voiceover("Consider the following daily closing prices of a stock:")
]
#only("2")[
#voiceover("150, 152, 149, 153, and 148 dollars.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[Calculate the standard deviation of these stock prices. 📈🧮]
#only("1")[
#voiceover("Your task is to calculate the standard deviation of these stock prices.")
]
]#questionDef(
  questionText: "What is the standard deviation of the given stock prices: [150, 152, 149, 153, 148]? Round your answer to two decimal places.",
  answerOptions: ("1.82", "150.40"),
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