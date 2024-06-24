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
#voiceover("Let's find the median of the set.")
]
#only("2-")[
The set is: $ (9, 17, 5, 13, 7, 11, 3, 15) $
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("The set of numbers is: 9, 17, 5, 13, 7, 11, 3, and 15.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(9, 17, 5, 13, 7, 11, 3, 15)$?", 
answerOptions: ("$\text{Median} = 10$", "$\text{Median} = -16$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\text{Median} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)