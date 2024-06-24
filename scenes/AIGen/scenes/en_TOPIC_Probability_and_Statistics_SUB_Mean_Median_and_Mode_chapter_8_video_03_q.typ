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
#voiceover("What is the median of the set 32, 30, 22, 26, 24, 28?")
]
#only("2-")[
#text(size: 24pt)[Set: (32, 30, 22, 26, 24, 28)]
// The set of numbers is shown from slide 2 onward
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(32, 30, 22, 26, 24, 28)$?", 
answerOptions: ("$\text{Median} = 28$", "$\text{Median} = -52$"), 
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