#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Present Value Question]
#v(40pt)
#only("1-")[
- Given:
  - Future value: €100 💰
  - Time: 1 year ⏳
  - Discount rate: 5% 📉
]
#v(20pt)
#only("2-")[
- Question: What is the present value? 🤔
]
#only("1")[
#voiceover("Consider the following scenario: You are to receive 100 euros in one year. The discount rate is 5 percent.")
]
#only("2")[
#voiceover("What is the present value of this future sum?")
]
]#questionDef(
questionText: "What is the present value of €100 to be received in one year if the discount rate is 5%?",
answerOptions: ("$95$€", "$105$€"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: 2
)
),
answerOptionMatcher:("$\key{a}$€"),
answerOptionsTypes: (
"a": "number"
)
),
)