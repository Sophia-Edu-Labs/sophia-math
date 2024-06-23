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
#only("1-")[Consider the fraction $1/4$]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[$arrow$ What is it as a decimal?]
#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. Consider the fraction one fourth.")]
#only("2")[#voiceover("Can you convert it into a decimal?")]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{1}{4}$ as a decimal?", 
answerOptions: ("$0.25$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)