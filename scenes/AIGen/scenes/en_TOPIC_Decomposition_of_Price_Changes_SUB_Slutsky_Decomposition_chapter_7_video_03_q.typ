#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's consider a real-world application of Slutsky Decomposition.")
]

#text(size: 30pt, weight: "bold")[Real-World Example]
// The title "Real-World Example" is shown on all slides

#v(40pt)

#only("2-")[- Consider the price of public transportation decreasing 🚌]
// The consideration of public transportation price decrease is shown from slide 2 onward

#v(40pt)

#only("3-")[How might this affect the demand for private car usage? 🚗]
// The question about the effect on private car usage demand is shown from slide 3 onward

#only("2")[
#voiceover("Suppose the price of public transportation decreases.")
]

#only("3")[
#voiceover("How might this affect the demand for private car usage?")
]

]#questionDef(
questionText: "How can Slutsky Decomposition be applied to analyze the effect of a decrease in public transportation price on the demand for private car usage?",
answerOptions: ("Slutsky Decomposition can separate the substitution effect (switching from cars to public transport due to the price change) and the income effect (increased real income allowing for more of both goods), or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)