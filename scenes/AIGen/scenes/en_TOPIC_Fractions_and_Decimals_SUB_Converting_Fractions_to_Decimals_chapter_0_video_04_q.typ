#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
// The title "Converting Fractions to Decimals" is shown on this slide
#v(40pt)
#only("1-")[Consider the fraction $5/10$]
// The fraction is shown from slide 1 onward
#v(40pt)
#only("2-")[$arrow$ Convert it to a decimal!]
// The instruction to convert the fraction to a decimal is shown from slide 2 onward
#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. Consider the fraction five over ten.")]
#only("2")[#voiceover("Can you convert it into a decimal number?")]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{5}{10}$ as a decimal?", 
answerOptions: ("$0.5$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)