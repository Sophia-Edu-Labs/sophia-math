#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)

// First visual element visible from subslide 1 to the end
#only("1-")[- Exercise: Multiply $2/3$ by $4/5$ by $6/7$ 🧮]

// First voiceover read out on subslide 1 only
#only("1")[
#voiceover("Let's consider the exercise. Multiply two thirds by four fifths by six sevenths.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $\frac{2}{3}$ by $\frac{4}{5}$ by $\frac{6}{7}$.", 
answerOptions: ("$\frac{48}{105}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)