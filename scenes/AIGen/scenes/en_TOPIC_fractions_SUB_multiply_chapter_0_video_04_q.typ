#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
// The title "Multiplying Fractions" is shown on all slides

#v(40pt)

#only("1")[
#voiceover("Let's consider the exercise.")
]

#only("2-")[#text()[$5 dot 3/4$]]
// The exercise $5 dot 3/4$ is shown from slide 2 onward

#v(40pt)

#only("3-")[What is the result of multiplying $5$ by $3/4$?]
// The question "What is the result of multiplying 5 by 3/4?" is shown from slide 3 onward

#only("3")[
#voiceover("Five times three fourths.")
]

#only("2")[
#voiceover("What is the result of multiplying five by three fourths?")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $5$ by $\frac{3}{4}$.", 
answerOptions: ("$\frac{15}{4}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)