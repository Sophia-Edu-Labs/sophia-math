#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's calculate the mean of a given set of numbers.")
]
#text(size: 30pt, weight: "bold")[Mean Calculation]
// The title "Mean Calculation" is shown on this slide
#v(40pt)
#only("2-")[
Consider the set $(1, 3, 5, 7, 9, 11)$
// The set of numbers is shown from slide 2 onward
]
#only("2")[
#voiceover("Consider the set of numbers: 1, 3, 5, 7, 9, and 11.")
]
#v(20pt)
#only("3-")[
What is the mean of this set?
// The question asking for the mean is shown from slide 3 onward
]
#only("3")[
#voiceover("What is the mean of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mean of the set $(1, 3, 5, 7, 9, 11)$?", 
answerOptions: ("$\\text{Mean} = 6$", "$\\text{Mean} = -8$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Mean} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)