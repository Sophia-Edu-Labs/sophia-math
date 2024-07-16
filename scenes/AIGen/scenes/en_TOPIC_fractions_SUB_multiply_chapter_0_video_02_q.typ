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
#voiceover("Let's solve the exercise.")
]

#only("2-")[#text()[$ 3 dot 1/2 $]]
#v(20pt)

#only("2")[
#voiceover("Multiply 3 by one half.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $3$ by $\frac{1}{2}$.", 
answerOptions: ("$\frac{3}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)