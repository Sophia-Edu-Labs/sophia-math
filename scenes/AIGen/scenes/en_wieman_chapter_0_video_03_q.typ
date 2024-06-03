#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's consider the pinball machine launcher design problem.")
]

#text(size: 30pt, weight: "bold")[Key Metrics]
// The title "Key Metrics" is shown on all slides

#v(40pt)

#only("2-")[To determine the spring constant, what key metrics do you need to consider? 🤔]
// The question is shown from slide 2 onward

#only("2")[
#voiceover("To determine the spring constant needed to launch the pinball to the top of the game, what are the key metrics you need to consider for your computations?")
]

]#questionDef(
questionText: "What are the key metrics needed to determine the spring constant for the pinball machine launcher?",
answerOptions: ("The key metrics are: mass of the pinball ($m$), height to the top ($h$), spring compression distance ($x$), and gravitational acceleration ($g$).", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)