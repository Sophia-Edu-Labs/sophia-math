#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode Calculation]
// The title "Mode Calculation" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Here's an exercise to practice finding the mode of a set of numbers.")
]
#only("2-")[
Consider the set $ (20, 10, 30, 10, 40, 20, 30) $
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("Consider the set of numbers: 20, 10, 30, 10, 40, 20, 30.")
]
#only("3-")[
What is the mode of this set?
]
// The question asking for the mode is shown from slide 3 onward
#only("3")[
#voiceover("What is the mode of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(20, 10, 30, 10, 40, 20, 30)$?", 
answerOptions: ("$\\text{Mode} = 10$", "$\\text{Mode} = -16$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\\text{Mode} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)