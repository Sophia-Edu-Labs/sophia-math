#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)

// Pose the question
#only("1-")[- Multiply $5$ by $7/8$ 🧮]
#v(20pt)

// Voiceover for the question
#only("1")[
#voiceover("Let's consider the problem of multiplying five by seven eighths.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $5$ by $\frac{7}{8}$.", 
answerOptions: ("$\frac{35}{8}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)