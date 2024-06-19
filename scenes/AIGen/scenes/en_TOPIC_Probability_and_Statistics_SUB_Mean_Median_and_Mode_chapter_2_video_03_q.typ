#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode of a Set]
// The title "Mode of a Set" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Consider the set of numbers 1, 2, 2, 3, 4.")
]
#only("2-")[
#text(size: 20pt)[Set: $\{1, 2, 2, 3, 4\}$]
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("What is the mode of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(1, 2, 2, 3, 4)$?", 
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