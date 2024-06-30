#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median Calculation]
// The title "Median Calculation" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("What is the median of the set three, one, four, two, five?")
]
#only("2-")[
#text(size: 20pt)[Set: (3, 1, 4, 2, 5)]
]
// The set is shown from slide 2 onward
#only("2")[
#voiceover("Consider the set three, one, four, two, five.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(3, 1, 4, 2, 5)$?", 
answerOptions: ("$\\text{Median} = 3$", "$\\text{Median} = -2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\\text{Median} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)