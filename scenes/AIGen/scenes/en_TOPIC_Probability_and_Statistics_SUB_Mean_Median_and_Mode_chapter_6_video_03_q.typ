#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median Calculation]
#v(40pt)
#only("1")[
#voiceover("Let's practice calculating the median of a set of numbers.")
]
#only("2-")[
#text(size: 20pt)[Consider the set: $ (4, 8, 12, 16, 20, 24) $]
]
#only("2")[
#voiceover("Consider the set: 4, 8, 12, 16, 20, 24.")
]
#only("3-")[
#text(size: 20pt)[What is the median?]
]
#only("3")[
#voiceover("What is the median?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the median of the set $(4, 8, 12, 16, 20, 24)$?", 
answerOptions: ("$\text{Median} = 14$", "$\text{Median} = -24$"), 
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