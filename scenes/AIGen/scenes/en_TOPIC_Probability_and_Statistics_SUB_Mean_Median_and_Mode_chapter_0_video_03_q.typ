#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's solve an exercise to find the mean of a set of numbers.")
]
#text(size: 30pt, weight: "bold")[Finding the Mean]
// The title "Finding the Mean" is shown on this slide
#v(40pt)
#only("2-")[
Consider the set $ (2, 4, 6, 8, 10) $
// The set of numbers is shown from slide 2 onward
]
#only("2")[
#voiceover("Consider the set of numbers: 2, 4, 6, 8, and 10.")
]
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
questionText: "What is the mean of the set $(2, 4, 6, 8, 10)$?", 
answerOptions: ("$\text{Mean} = 6$", "$\text{Mean} = -8$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Mean} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)