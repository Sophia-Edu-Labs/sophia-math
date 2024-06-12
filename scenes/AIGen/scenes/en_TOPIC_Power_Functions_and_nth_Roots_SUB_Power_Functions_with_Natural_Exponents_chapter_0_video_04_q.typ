#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's solve a simple power function exercise.")
]
#text(size: 30pt, weight: "bold")[Power Functions]
// The title "Power Functions" is shown on this slide
#v(40pt)
#only("2-")[
Calculate $ 5^2 $
]
// The mathematical expression to calculate is shown from slide 2 onward
#only("2")[
#voiceover("Calculate the value of five squared.")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $5^2$?", 
answerOptions: ("$25$", "$-46$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)