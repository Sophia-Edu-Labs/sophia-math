#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's solve an exercise involving the mean of a set of numbers.")
]
#text(size: 30pt, weight: "bold")[Mean of a Set]
// The title "Mean of a Set" is shown on this slide
#v(40pt)
#only("2-")[
Calculate the mean of the set $(15, 25, 65, 35, 45, 55)$
// The set of numbers is shown from slide 2 onward
]
#only("2")[
#voiceover("Calculate the mean of the set of numbers: 15, 25, 65, 35, 45, and 55.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mean of the set $(15, 25, 65, 35, 45, 55)$?", 
answerOptions: ("$\\text{Mean} = 40$", "$\\text{Mean} = -76$"), 
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