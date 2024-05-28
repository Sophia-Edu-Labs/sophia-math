#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's consider the compensated demand function for good X in the context of Hicks Decomposition.")
]

#text(size: 30pt, weight: "bold")[Compensated Demand Function]
// The title "Compensated Demand Function" is shown on all slides

#v(40pt)

#only("2-")[- Function: $h_X(p_X, p_Y, U)$]
// The function h_X is shown from slide 2 onward

#v(40pt)

#only("3-")[- $p_X$: price of good X 💰]
// The explanation for p_X is shown from slide 3 onward

#v(20pt)

#only("4-")[- $p_Y$: price of good Y 💰]
// The explanation for p_Y is shown from slide 4 onward

#v(20pt)

#only("5-")[- $U$: utility level 😊]
// The explanation for U is shown from slide 5 onward

#v(40pt)

#only("6-")[Write the equation for the compensated demand function for good X.]
// The question is shown from slide 6 onward

#only("2")[
#voiceover("The compensated demand function for good X is denoted as h sub X and is a function of three variables.")
]

#only("3")[
#voiceover("p sub X represents the price of good X,")
]

#only("4")[
#voiceover("p sub Y represents the price of good Y,")
]

#only("5")[
#voiceover("and U represents the utility level.")
]

#only("6")[
#voiceover("Now, it's your turn. Write the equation for the compensated demand function for good X.")
]

]#questionDef(
questionText: "Write the equation for the compensated demand function for good X.",
answerOptions: ("The compensated demand function for good X is $h_X(p_X, p_Y, U)$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)