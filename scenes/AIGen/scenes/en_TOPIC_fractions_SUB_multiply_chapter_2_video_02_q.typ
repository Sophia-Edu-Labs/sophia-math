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
#only("1-")[
- Question: Multiply $1/2$ by $2/3$ by $3/4$ 🧮
]
#v(20pt)

// First voiceover read out on subslide 1 only
#only("1")[
#voiceover("Let's multiply the fractions one half, two thirds, and three fourths.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $\frac{1}{2}$ by $\frac{2}{3}$ by $\frac{3}{4}$.", 
answerOptions: ("$\frac{1}{4}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)