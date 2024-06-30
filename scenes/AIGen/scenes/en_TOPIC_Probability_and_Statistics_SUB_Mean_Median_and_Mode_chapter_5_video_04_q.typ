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
#voiceover("Consider the set of numbers: 7, 9, 7, 8, 9, 6, 10, 8.")
]
#only("2-")[
#text()[
Set: $ (7, 9, 7, 8, 9, 6, 10, 8) $
]
#v(20pt)
#only("2")[
#voiceover("What is the mode of this set?")
]
]
]



//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(7, 9, 7, 8, 9, 6, 10, 8)$?", 
answerOptions: ("$\\text{Mode: } 7$", "$\\text{Mode: } -10$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\\text{Mode: } \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)