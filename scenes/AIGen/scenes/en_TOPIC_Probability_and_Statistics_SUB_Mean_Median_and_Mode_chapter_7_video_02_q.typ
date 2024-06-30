#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean Calculation]
#v(40pt)
#only("1")[#voiceover("Let's calculate the mean of the following set of numbers.")]
#only("2")[#voiceover("The set is: 300, 100, 500, 400, 200.")]
#only("2-")[
#text(size: 24pt)[Set: $ (300, 100, 500, 400, 200) $]
]
#v(20pt)
#only("3")[#voiceover("What is the mean of this set?")]
#only("3-")[
#text(size: 24pt)[Mean: $ ? $]
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mean of the set $(300, 100, 500, 400, 200)$?", 
answerOptions: ("$\\text{Mean} = 300$", "$\\text{Mean} = -596$"), 
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