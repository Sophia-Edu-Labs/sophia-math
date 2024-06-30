#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode Calculation]
#v(40pt)
#only("1")[
#voiceover("Consider the set of numbers.")
]
#only("2-")[
#text(size: 25pt)[Set: $ (50, 55, 60, 55, 65, 60, 65) $]
]
#only("2")[
#voiceover("What is the mode of the set 50, 55, 60, 55, 65, 60, 65?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(50, 55, 60, 55, 65, 60, 65)$?", 
answerOptions: ("$\\text{Mode} = 55$", "$\\text{Mode} = -106$"), 
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