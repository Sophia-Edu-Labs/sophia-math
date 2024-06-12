#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
#only("1")[
#voiceover("Here's an exercise in which we'll practice computing values of the power function.")
]
#only("2-")[
Calculate $ 2^3 $
]
#only("2")[
#voiceover("Calculate the value of the function 2 raised to the power of 3. Or in other words: Calculate 2 cubed.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $2^3$?", 
answerOptions: ("$8$", "$-12$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)