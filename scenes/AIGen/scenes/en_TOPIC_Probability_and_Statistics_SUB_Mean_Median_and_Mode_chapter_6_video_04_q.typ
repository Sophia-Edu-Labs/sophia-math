#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode of a Set]
#v(40pt)
#only("1")[
#voiceover("Let's find the mode of the set.")
]
#only("2-")[
#text(size: 25pt)[Set: $ (3, 3, 6, 6, 9, 9) $]
]
#only("2")[
#voiceover("Consider the set: 3, 3, 6, 6, 9, 9.")
]
#v(20pt)
#only("3-")[
#text(size: 25pt)[What is the mode? 🤔]
]
#only("3")[
#voiceover("What is the mode of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(3, 3, 6, 6, 9, 9)$?", 
answerOptions: ("$\\text{Mode} = 3$", "$\\text{Mode} = -2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\\text{Mode} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)