#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Population Growth]
// The title "Population Growth" is shown on this slide
#v(40pt)
#only("1-")[
- Initial population: 1000 👥
]
// The initial population is shown from slide 1 onward
#v(20pt)
#only("2-")[
- Growth rate: 5% per year 📈
]
// The growth rate is shown from slide 2 onward
#v(20pt)
#only("3-")[
- Time: 3 years ⏳
]
// The time period is shown from slide 3 onward
#v(20pt)
#only("4-")[
#text(size: 25pt)[What is the population after 3 years? 🤔]
]
// The question is posed on slide 4

#only("1")[
#voiceover("Consider a population with an initial size of 1000 individuals.")
]

#only("2")[
#voiceover("The population grows at a rate of 5% per year.")
]

#only("3")[
#voiceover("We want to know the population size after a period of 3 years.")
]

#only("4")[
#voiceover("What will the population be after 3 years?")
]
]#questionDef(
questionText: "What is the population after 3 years?",
answerOptions: ("$1157.63$", "$1000$"),
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
"a": "number"
)
),
)