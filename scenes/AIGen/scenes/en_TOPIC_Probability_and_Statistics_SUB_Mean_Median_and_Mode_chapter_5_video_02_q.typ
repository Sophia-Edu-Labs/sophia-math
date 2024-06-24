#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode with Complex Numbers]
// The title "Mode with Complex Numbers" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Let's consider the following set of numbers.")
]
#only("2-")[
#text(size: 30pt, weight: "bold")[Exercise: Find the Mode]
// The title "Exercise: Find the Mode" is shown from slide 2 onward
#v(20pt)
#text(size: 20pt)[Set: (2, 4, 2, 5, 3, 4, 3)]
// The set of numbers is shown from slide 2 onward
]
#only("2")[
#voiceover("The set is: 2, 4, 2, 5, 3, 4, 3.")
]
#only("3-")[
#text(size: 20pt)[Question: What is the mode of this set?]
// The question is shown from slide 3 onward
]
#only("3")[
#voiceover("What is the mode of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(2, 4, 2, 5, 3, 4, 3)$?", 
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