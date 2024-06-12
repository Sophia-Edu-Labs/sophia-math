#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's solve a simple exercise involving power functions.")
]
#text(size: 30pt, weight: "bold")[Power Functions]
// The title "Power Functions" is shown on this slide
#v(40pt)
#only("2-")[
Calculate $ 2^3 $
]
// The mathematical expression to calculate is shown from slide 2 onward
#only("2")[
#voiceover("Calculate the value of two raised to the power of three.")
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