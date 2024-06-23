#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Complex Fractions to Decimals]
// The title "Converting Complex Fractions to Decimals" is shown on this slide
#v(40pt)
#only("1-")[Consider the fraction $9/20$]
// The fraction is shown from slide 1 onward
#v(40pt)
#only("2-")[$arrow$ Convert it to a decimal $square/square$!]
// The instruction to convert to a decimal is shown from slide 2 onward
#only("1")[#voiceover("Let's test your knowledge on converting complex fractions to decimals. Consider the fraction nine over twenty.")]
#only("2")[#voiceover("Can you convert it into a decimal, where we express it in the form of a number with a decimal point?")]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{9}{20}$ as a decimal?", 
answerOptions: ("$0.45$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)