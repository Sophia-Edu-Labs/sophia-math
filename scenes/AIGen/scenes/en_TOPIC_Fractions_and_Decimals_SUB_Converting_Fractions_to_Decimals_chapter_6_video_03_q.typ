#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
// The title "Converting Fractions to Decimals" is shown on all slides
#v(40pt)

#only("1-")[Consider the fraction $7/10$]
// The fraction $7/10$ is shown from slide 1 onward
#v(40pt)

#only("2-")[$arrow$ What is it as a decimal?]
// The question "What is it as a decimal?" is shown from slide 2 onward

#only("1")[
#voiceover("Let's practice converting fractions to decimals. Consider the fraction seven over ten.")
]

#only("2")[
#voiceover("What is this fraction as a decimal?")
]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{7}{10}$ as a decimal?", 
answerOptions: ("$0.7$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)