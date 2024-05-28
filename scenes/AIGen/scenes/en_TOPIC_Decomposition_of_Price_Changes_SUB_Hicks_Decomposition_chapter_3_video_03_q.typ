#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Hicks Decomposition Exercise]
// The title "Hicks Decomposition Exercise" is shown on all slides

#v(40pt)

#only("1-")[Draw a graph showing the substitution and income effects of a price decrease for good X. 📉]
// The exercise prompt is shown from slide 1 onward

#v(40pt)

#only("2-")[Consider: 🤔]
// "Consider:" is shown from slide 2 onward

#v(20pt)

#only("3-")[- Initial and new budget constraints]
// The first consideration is shown from slide 3 onward

#v(20pt)

#only("4-")[- Initial and new indifference curves]
// The second consideration is shown from slide 4 onward

#v(20pt)

#only("5-")[- Movement from initial to new consumption bundle]
// The third consideration is shown from slide 5 onward

#v(20pt)

#only("6-")[- Separating substitution and income effects]
// The fourth consideration is shown from slide 6 onward

#only("1")[
#voiceover("For this exercise, draw a graph showing the substitution and income effects of a price decrease for good X.")
]

#only("2")[
#voiceover("When creating your graph, consider the following elements:")
]

#only("3")[
#voiceover("First, show the initial and new budget constraints, reflecting the price change.")
]

#only("4")[
#voiceover("Next, include the initial and new indifference curves, demonstrating the consumer's preferences.")
]

#only("5")[
#voiceover("Illustrate the movement from the initial to the new consumption bundle.")
]

#only("6")[
#voiceover("Finally, separate the substitution and income effects in your graph.")
]

]#questionDef(
questionText: "Draw a graph showing the substitution and income effects of a price decrease for good $X$. Consider the initial and new budget constraints, initial and new indifference curves, movement from initial to new consumption bundle, and separating substitution and income effects.",
answerOptions: ("The graph should correctly illustrate the substitution and income effects of a price decrease for good $X$, including the initial and new budget constraints, initial and new indifference curves, movement from initial to new consumption bundle, and separating substitution and income effects.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)