#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode Calculation]
// The title "Mode Calculation" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Consider the set of numbers: 5, 5, 6, 7, 7, 8.")
]
#only("2-")[
#text(size: 20pt)[Set: (5, 5, 6, 7, 7, 8)]
]
// The set of numbers is shown from slide 2 onward
#only("2")[
#voiceover("What is the mode of this set?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the mode of the set $(5, 5, 6, 7, 7, 8)$?", 
answerOptions: ("$\begin{matrix} \\text{Mode:} & 5 \end{matrix}$", "$\begin{matrix} \\text{Mode:} & -6 \end{matrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{matrix} \\text{Mode:} & \key{a} \end{matrix}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)