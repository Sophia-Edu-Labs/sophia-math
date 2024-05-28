#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
// The title "Slutsky Decomposition" is shown on all slides

#v(40pt)

#only("1-")[- Separates effect of price change into:]
// The bullet point is shown from slide 1 onward

#v(20pt)

#only("2-")[   - Substitution effect 🔄]
// The substitution effect bullet point is shown from slide 2 onward
#only("3-")[   - Income effect 💰]
// The income effect bullet point is shown from slide 3 onward

#v(40pt)

#only("4-")[How is a decrease in the price of good X represented graphically in terms of the substitution and income effects? 📉]
// The question is shown from slide 4 onward

#only("1")[
#voiceover("Slutsky Decomposition separates the effect of a price change into:")
]

#only("2")[
#voiceover("the substitution effect")
]

#only("3")[
#voiceover("and the income effect.")
]

#only("4")[
#voiceover("How is a decrease in the price of good X represented graphically in terms of the substitution and income effects?")
]

]#questionDef(
questionText: "How is a decrease in the price of good $X$ represented graphically in terms of the substitution and income effects?",
answerOptions: ("The budget constraint pivots outward, the substitution effect moves the consumption along the initial indifference curve, and the income effect shifts to a higher indifference curve.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)