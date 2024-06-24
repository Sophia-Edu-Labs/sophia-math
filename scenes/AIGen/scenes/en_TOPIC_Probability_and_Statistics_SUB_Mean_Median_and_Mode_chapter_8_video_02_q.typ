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
#voiceover("Let's practice calculating the median of a set of numbers.")
]
#only("2-")[
Consider the set: $ (11, 21, 13, 17, 19, 15, 23) $
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("Consider the set of numbers: eleven, twenty-one, thirteen, seventeen, nineteen, fifteen, and twenty-three.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(11, 21, 13, 17, 19, 15, 23)$?", 
answerOptions: ("$\text{Median} = 17$", "$\text{Median} = -30$"), 
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