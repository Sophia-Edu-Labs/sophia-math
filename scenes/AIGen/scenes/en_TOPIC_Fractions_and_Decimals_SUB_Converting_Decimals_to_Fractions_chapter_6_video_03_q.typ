#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]
// The title "Converting Decimals to Fractions" is shown on this slide
#v(40pt)
#only("1-")[Consider decimal number $0.44$]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[$arrow$ Convert it to a fraction $square/square$!]
#only("1")[#voiceover("Let's test your knowledge on converting decimals to fractions. Consider the decimal number zero point four four.")]
#only("2")[#voiceover("Can you convert it into a fraction, where we divide one number by another?")]
]

//Type: FREE 
#questionDef( 
questionText: "What fraction is $0.44$ equal to?", 
answerOptions: ("$\\frac{44}{100}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)