#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension]
#v(40pt)
#only("1-")[
What is the dimension of $RR^3$? 🤔
]
#only("1")[
#voiceover("Consider the vector space R 3.")
]
#only("2")[
#voiceover("What is the dimension of this space?")
]
]#questionDef(
questionText: "What is the dimension of $RR^3$?", 
answerOptions: ("1", "2", "3", "4"),
correctAnswerIndex: 2
)