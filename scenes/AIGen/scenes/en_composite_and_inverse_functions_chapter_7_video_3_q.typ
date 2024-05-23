#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Inverse Functions in Real Life]

#v(40pt)

#only("1-")[Inverse functions have many practical applications.]

#v(20pt)

#only("2-")[They allow us to "undo" a function and find the input given the output.]

#v(20pt)

#only("3-")[Can you think of a real-world scenario where this would be useful? 🤔]

#only("1")[
#voiceover("Inverse functions have many practical applications in the real world.")
]

#only("2")[
#voiceover("They allow us to 'undo' a function and find the input given the output.")
]

#only("3")[
#voiceover("Can you think of a real-world scenario where this property of inverse functions would be useful?")
]

]#questionDef(
questionText: "Describe a scenario in which an inverse function is useful.",
answerOptions: ("A good answer will describe a real-world situation where you need to find the input of a function given the output, and how an inverse function can be used to solve this problem.", "The answer does not describe a relevant real-world scenario where an inverse function is useful to find the input given the output."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)