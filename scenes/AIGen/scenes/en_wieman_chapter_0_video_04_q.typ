#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pinball Spring Constant]
#v(40pt)
#only("1-")[
- Given:
  - $m = 100g$
  - $h = 0.8m$
  - $x = 0.1m$
  - $g = 9.81m/s^2$
]
#v(20pt)
#only("2-")[
- Formula: $1/2 k x^2 = m g h$
]
#v(20pt)
#only("3-")[
🤔 Calculate the spring constant $k$
]
#only("1")[
#voiceover("Let's consider the given values for designing a pinball machine launcher.")
]
#only("2")[
#voiceover("We'll use the formula relating the elastic potential energy of the spring to the gravitational potential energy.")
]
#only("3")[
#voiceover("Your task is to calculate the spring constant k. Good luck!")
]
]#questionDef(
questionText: "What is the value of the spring constant $k$ in $N/m$?",
answerOptions: ("$156.96$ N/m", "$100$ N/m$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: 3.3333
)
),
answerOptionMatcher:("$\key{a}$ N/m"),
answerOptionsTypes: (
"a": "number"
)
),
)