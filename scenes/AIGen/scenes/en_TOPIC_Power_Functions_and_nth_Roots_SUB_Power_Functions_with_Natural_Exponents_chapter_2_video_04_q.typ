#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Symmetry of the Graph of $f(x) = x^4$]

#v(40pt)

#only("1")[
#voiceover("Let's consider the function")
]

#only("2-")[#text()[$ f(x) = x^4 $]]
#only("2")[
#voiceover("f of x equals x to the power of four.")
]

#v(40pt)

#only("3-")[What is the symmetry of the graph of $f(x) = x^4$?]
// The question "What is the symmetry of the graph of f(x) = x^4?" is shown from slide 3 onward

#only("3")[
#voiceover("What is the symmetry of the graph of f of x equals x to the power of four?")
]
]

//Type: FREE 
#questionDef( 
questionText: "Describe the symmetry of the graph of $f(x) = x^4$.", 
answerOptions: ("The graph of $f(x) = x^4$ is symmetric about the $y$-axis. This is because $f(-x) = (-x)^4 = x^4 = f(x)$, which satisfies the condition for even symmetry.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)