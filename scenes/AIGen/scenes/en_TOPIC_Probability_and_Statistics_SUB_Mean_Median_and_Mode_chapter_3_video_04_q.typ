#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's solve a numeric exercise involving the mean of a set of numbers.")
]
#text(size: 30pt, weight: "bold")[Mean with Complex Numbers]
// The title "Mean with Complex Numbers" is shown on this slide
#v(40pt)
#only("2-")[
Consider the set: $(22, 12, 24, 18, 20, 14, 16)$
// The set of numbers is shown from slide 2 onward
]
#only("2")[
#voiceover("Consider the set of numbers: 22, 12, 24, 18, 20, 14, and 16.")
]
#only("3-")[
- What is the mean of this set? 🤔
// The question asking for the mean is shown from slide 3 onward
]
#only("3")[
#voiceover("What is the mean of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mean of the set $(22, 12, 24, 18, 20, 14, 16)$?", 
answerOptions: ("$\text{Mean} = 18$", "$\text{Mean} = -32$"), 
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