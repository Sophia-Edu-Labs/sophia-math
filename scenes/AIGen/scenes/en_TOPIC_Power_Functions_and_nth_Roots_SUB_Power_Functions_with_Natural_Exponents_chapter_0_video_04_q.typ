#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
// The title "Power Functions" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Here's an exercise in which we'll practice computing values of the power function.")
]
#only("2-")[
Calculate $ 5^2 $
]
// The mathematical expression to calculate is shown from slide 2 onward
#only("2")[
#voiceover("Calculate the value of the function x squared at x equals five. Or in other words: Calculate 5 squared.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $5^2$?", 
answerOptions: ("$25$", "$-46$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)