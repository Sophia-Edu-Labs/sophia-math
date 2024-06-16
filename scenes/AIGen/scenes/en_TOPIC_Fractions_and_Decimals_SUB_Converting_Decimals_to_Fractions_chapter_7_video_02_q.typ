#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals with More Complexity to Fractions]
#v(40pt)
#only("1-")[Consider the decimal number $3.042$]
#v(40pt)
#only("2-")[$arrow$ What fraction is it equal to?]
#only("1")[#voiceover("Let's test your knowledge on converting decimals with more complexity to fractions. Consider the decimal number three point zero four two.")]
#only("2")[#voiceover("Can you determine what fraction this decimal is equal to?")]
]

//Type: FREE 
#questionDef( 
questionText: "What fraction is $3.042$ equal to?", 
answerOptions: ("$\\frac{3042}{1000}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)