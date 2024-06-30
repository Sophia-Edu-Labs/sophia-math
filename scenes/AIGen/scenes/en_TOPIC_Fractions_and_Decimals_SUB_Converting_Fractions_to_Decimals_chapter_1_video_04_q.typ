#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[#text()[$12/100$]]
#v(20pt)
#only("2-")[$arrow$ Convert it to a decimal!]
#v(20pt)


#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. Consider the fraction twelve over one hundred.")]
#only("2")[#voiceover("Can you convert it into a decimal?")]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{12}{100}$ as a decimal?", 
answerOptions: ("$0.12$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)