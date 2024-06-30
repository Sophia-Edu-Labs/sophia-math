#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean Calculation Exercise]
// The title "Mean Calculation Exercise" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("What is the mean of the set two hundred fifty, three hundred fifty, four hundred fifty, one hundred fifty, five hundred fifty, six hundred fifty?")
]
#only("2-")[
#text(size: 20pt)[Set: (250, 350, 450, 150, 550, 650)]
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("Consider the set of numbers: two hundred fifty, three hundred fifty, four hundred fifty, one hundred fifty, five hundred fifty, six hundred fifty.")
]
#only("3-")[
#text(size: 20pt)[Calculate the mean]
]
// The instruction to calculate the mean is shown from slide 3 onward
#only("3")[
#voiceover("Calculate the mean of this set.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mean of the set $(250, 350, 450, 150, 550, 650)$?", 
answerOptions: ("$\\text{Mean} = 400$", "$\\text{Mean} = -796$"), 
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