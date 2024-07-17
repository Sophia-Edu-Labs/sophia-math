#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Absolute and Relative Frequency]
#v(40pt)

#only("1")[#voiceover("Let's consider the question.")]
#only("2-")[#text()[
Roll a die 10 times and record the outcomes: 1, 2, 2, 4, 5, 6, 6, 6, 3, 6.
]]
#v(20pt)

#only("3-")[#text()[
What is the absolute frequency of rolling a 6?
]]
#v(20pt)

#only("2")[#voiceover("Roll a die ten times and record the outcomes: 1, 2, 2, 4, 5, 6, 6, 6, 3, 6.")]
#only("3")[#voiceover("What is the absolute frequency of rolling a six?")]
]

//Type: FREE 
#questionDef( 
questionText: "Roll a die 10 times and record the outcomes: $1$, $2$, $2$, $4$, $5$, $6$, $6$, $6$, $3$, $6$. What is the absolute frequency of rolling a $6$?", 
answerOptions: ("$4$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)