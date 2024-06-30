#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median with Complex Numbers]
// The title "Median with Complex Numbers" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Consider the following exercise.")
]
#only("2")[
#voiceover("What is the median of the set 10, 6, 4, 8, 12, 2?")
]
#only("2-")[
- Set: $(10, 6, 4, 8, 12, 2)$
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("What is the median of the set 10, 6, 4, 8, 12, and 2?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(10, 6, 4, 8, 12, 2)$?", 
answerOptions: ("$\\text{Median} = 7$", "$\\text{Median} = -10$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Median} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)