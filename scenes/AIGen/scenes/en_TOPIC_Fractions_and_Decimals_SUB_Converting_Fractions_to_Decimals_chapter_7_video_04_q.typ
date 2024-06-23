#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Complex Fractions to Decimals]
#v(40pt)
#only("1-")[Consider the fraction $3/5$]
#v(40pt)
#only("2-")[$arrow$ Convert it to a decimal!]
#only("1")[#voiceover("Let's test your knowledge on converting complex fractions to decimals. Consider the fraction three-fifths.")]
#only("2")[#voiceover("Can you convert it into a decimal?")]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{3}{5}$ as a decimal?", 
answerOptions: ("$0.6$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)