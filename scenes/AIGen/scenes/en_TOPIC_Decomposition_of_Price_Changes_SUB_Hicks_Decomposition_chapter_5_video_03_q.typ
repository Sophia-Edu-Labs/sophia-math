#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks vs Slutsky Decomposition 🤔]
#v(40pt)
#only("1-")[What is one key difference between Hicks and Slutsky Decompositions?]
#only("1")[
#voiceover("Let's consider the difference between Hicks and Slutsky Decompositions.")
]
#only("2")[
#voiceover("What is one key difference between these two decompositions?")
]
]#questionDef(
questionText: "What is one key difference between Hicks and Slutsky Decompositions?",
answerOptions: ("Hicks Decomposition holds $utility$ constant, while Slutsky Decomposition holds $real\ income$ constant.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)