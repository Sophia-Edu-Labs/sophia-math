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

#only("1-")[What is $42/1000$ as a decimal?]
// The question is shown from slide 1 onward

#only("1")[
#voiceover("Let's test your knowledge on converting fractions to decimals. What is forty-two over one thousand as a decimal?")
]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{42}{1000}$ as a decimal?", 
answerOptions: ("$0.042$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)