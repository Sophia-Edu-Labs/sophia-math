#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)
#only("1")[
#voiceover("Let's solve an exercise on multiplying fractions.")
]
#only("2-")[
#text()[$1/2$ $dot$ $2/3$]
]
#v(20pt)
#only("2")[
#voiceover("Multiply one half by two thirds.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $\frac{1}{2}$ by $\frac{2}{3}$.", 
answerOptions: ("$\frac{1}{3}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)