#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting More Complex Fractions to Decimals]
// The title "Converting More Complex Fractions to Decimals" is shown on all slides
#v(40pt)

#only("1-")[Consider the fraction $7/20$]
// The fraction 7/20 is shown from slide 1 onward

#v(40pt)

#only("2-")[$arrow$ Convert it to a decimal $square$!]
// The instruction to convert to a decimal is shown from slide 2 onward

#only("1")[#voiceover("Let's test your knowledge on converting more complex fractions to decimals. Consider the fraction seven over twenty.")]
#only("2")[#voiceover("Can you convert it into a decimal number?")]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{7}{20}$ as a decimal?", 
answerOptions: ("$0.35$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)