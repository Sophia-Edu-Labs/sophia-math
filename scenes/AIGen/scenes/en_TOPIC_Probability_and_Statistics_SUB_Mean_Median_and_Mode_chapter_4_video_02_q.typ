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
#voiceover("Let's consider the set of numbers: 1, 9, 3, 11, 13, 5, and 7.")
]
#only("2-")[
#text(size: 20pt)[Set: $ (1, 9, 3, 11, 13, 5, 7) $]
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("The set is given as 1, 9, 3, 11, 13, 5, and 7.")
]
#only("3-")[
#text(size: 20pt)[Question: What is the median of this set?]
]
// The question asking for the median is shown from slide 3 onward
#only("3")[
#voiceover("What is the median of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(1, 9, 3, 11, 13, 5, 7)$?", 
answerOptions: ("$\text{Median} = 7$", "$\text{Median} = -10$"), 
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