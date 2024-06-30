#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean Calculation]
// The title "Mean Calculation" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("What is the mean of the set 140, 120, 160, 180, 200, 240, 220?")
]
#only("2-")[
- $ (140, 120, 160, 180, 200, 240, 220) $
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("Consider the set of numbers 140, 120, 160, 180, 200, 240, and 220.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mean of the set $(140, 120, 160, 180, 200, 240, 220)$?", 
answerOptions: ("$\\text{Mean} = 180$", "$\\text{Mean} = -356$"), 
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