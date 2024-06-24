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
#text(size: 25pt)[Set: (2, 5, 3, 3, 4, 5, 1, 2)]
]
#only("2")[
#voiceover("Consider the set: 2, 5, 3, 3, 4, 5, 1, 2.")
]
#only("3-")[
#text(size: 25pt)[Mode: ?]
]
#only("3")[
#voiceover("What is the mode of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(2, 5, 3, 3, 4, 5, 1, 2)$?", 
answerOptions: ("$\text{Mode} = 2$", "$\text{Mode} = 0$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\text{Mode} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)