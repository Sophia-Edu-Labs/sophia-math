#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Absolute and Relative Frequency]
#v(40pt)
#only("1")[
#voiceover("Let's consider the following exercise.")
]
#only("2-")[#text()[
Draw a card 20 times with replacement:
1, 2, 2, 3, 4, 5, 5, 5, 5, 3, 4, 2, 1, 5, 6, 3, 6, 5, 3, 4.
]]
#v(20pt)
#only("3-")[#text()[
What is the absolute frequency of drawing a 5?
]]
#only("2")[
#voiceover("Draw a card 20 times with replacement. The sequence is: 1, 2, 2, 3, 4, 5, 5, 5, 5, 3, 4, 2, 1, 5, 6, 3, 6, 5, 3, 4.")
]
#only("3")[
#voiceover("What is the absolute frequency of drawing a 5?")
]
]

//Type: FREE 
#questionDef( 
questionText: "Draw a card 20 times with replacement: $1, 2, 2, 3, 4, 5, 5, 5, 5, 3, 4, 2, 1, 5, 6, 3, 6, 5, 3, 4$. What is the absolute frequency of drawing a $5$?", 
answerOptions: ("$6$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)