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
#voiceover("What is the median of the set 7, 3, 9, 1, 5, 2?")
]
#only("2-")[
#text(size: 20pt)[Set: (7, 3, 9, 1, 5, 2) 📊]
]
// The set is shown from slide 2 onward
#only("2")[
#voiceover("Consider the set of numbers: 7, 3, 9, 1, 5, and 2.")
]
#only("3-")[
#text(size: 20pt)[Median: ? 🤔]
]
// The question mark for the median is shown from slide 3 onward
#only("3")[
#voiceover("What is the median of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(7, 3, 9, 1, 5, 2)$?", 
answerOptions: ("$\text{Median} = 4$", "$\text{Median} = -4$"), 
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