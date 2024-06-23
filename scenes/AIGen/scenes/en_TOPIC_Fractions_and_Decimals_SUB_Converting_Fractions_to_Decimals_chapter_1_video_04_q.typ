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
#only("3-")[$12 ÷ 100 = 0.12$]

#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. Consider the fraction twelve over one hundred.")]
#only("2")[#voiceover("Can you convert it into a decimal?")]
#only("3")[#voiceover("To convert twelve over one hundred to a decimal, we divide twelve by one hundred, which equals zero point one two.")]
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