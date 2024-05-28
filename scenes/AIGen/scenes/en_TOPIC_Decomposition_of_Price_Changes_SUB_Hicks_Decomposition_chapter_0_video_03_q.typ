#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
#v(40pt)
#only("1-")[
When the price of a good increases, Hicks Decomposition isolates effects in a specific order. 🤔
]
#v(20pt)
#only("2-")[
Which effect is isolated first? 
]
#v(20pt)
#only("3-")[

]
#only("1")[
#voiceover("When the price of a good increases, Hicks Decomposition isolates effects in a specific order.")
]
#only("2")[
#voiceover("Which effect is isolated first?")
]
#only("3")[
#voiceover("Is it the substitution effect or the income effect? Think about it and select your answer.")
]
]

#questionDef(
questionText: "If the price of good $X$ increases, what effect does Hicks Decomposition isolate first?",
answerOptions: ("Substitution effect", "Income effect"),
correctAnswerIndex: 0,
)