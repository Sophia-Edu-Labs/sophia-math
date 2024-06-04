#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Theoretical Maximum Power Output]
#v(40pt)
#only("1-")[- Use the formula: $P = E / t$]
#v(20pt)
#only("2-")[- $E = 245250$ Joules (from previous exercise)]
#v(20pt)
#only("3-")[- $t = 1$ second]
#only("1")[
#voiceover("To determine the theoretical maximum power output, we will use the formula P equals E divided by t, where P is power, E is energy, and t is time.")
]
#only("2")[
#voiceover("From the previous exercise, we know that the potential energy E is 245250 Joules.")
]
#only("3")[
#voiceover("Assuming the time t is 1 second, calculate the theoretical maximum power output in Watts.")
]
]#questionDef(
questionText: "What is the theoretical maximum power output $P$ in Watts?",
answerOptions: ("$245250$ W", "$0$ W"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ W"),
answerOptionsTypes: (
"a": "number"
)
),
)