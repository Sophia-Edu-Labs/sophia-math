#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Hicks vs. Slutsky Decomposition]
// The title "Hicks vs. Slutsky Decomposition" is shown on all slides

#v(40pt)

#only("1-")[Hicks Decomposition holds utility constant, while Slutsky Decomposition holds real income constant. 🎓]
// The difference between Hicks and Slutsky Decomposition is shown from slide 1 onward

#v(40pt)

#only("2-")[In what scenario might Hicks Decomposition be more appropriate than Slutsky Decomposition? 🤔]
// The question is shown from slide 2 onward

#only("1")[
#voiceover("Hicks Decomposition holds utility constant, while Slutsky Decomposition holds real income constant.")
]

#only("2")[
#voiceover("In what scenario might Hicks Decomposition be more appropriate than Slutsky Decomposition?")
]

]#questionDef(
questionText: "In what scenario might Hicks Decomposition be more appropriate than Slutsky Decomposition?",
answerOptions: ("When analyzing the effect of a price change on a consumer's choice while keeping their level of satisfaction (utility) constant.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)