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

#only("1-")[#text()[$frac(2,3) * frac(3,4)$]]
// The fractions to be multiplied are shown from slide 1 onward

#v(40pt)

#only("1")[
#voiceover("Let's multiply two thirds by three fourths.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $\frac{2}{3}$ by $\frac{3}{4}$.", 
answerOptions: ("$\frac{1}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)