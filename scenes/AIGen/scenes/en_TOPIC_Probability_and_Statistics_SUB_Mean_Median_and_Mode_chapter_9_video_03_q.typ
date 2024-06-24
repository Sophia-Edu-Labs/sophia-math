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
#voiceover("What is the mode of the set?")
]
#only("2-")[
#text(size: 20pt)[(25, 15, 35, 15, 45, 25, 35)]
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("The set is: 25, 15, 35, 15, 45, 25, 35.")
]
]


//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(25, 15, 35, 15, 45, 25, 35)$?", 
answerOptions: ("$\text{Mode} = 15$", "$\text{Mode} = -26$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\text{Mode} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)