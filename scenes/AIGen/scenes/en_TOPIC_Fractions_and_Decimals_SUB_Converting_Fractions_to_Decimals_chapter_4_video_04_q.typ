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
#only("1-")[Consider the fraction $7/8$]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[$arrow$ Convert it to a decimal $square/square$!]
#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. Consider the fraction seven over eight.")]
#only("2")[#voiceover("Can you convert it into a decimal, where we divide one number by another?")]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{7}{8}$ as a decimal?", 
answerOptions: ("$0.875$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)