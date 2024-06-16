#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Complex Decimals to Fractions]
// The title "Converting Complex Decimals to Fractions" is shown on this slide
#v(40pt)
#only("1-")[Consider the decimal number $4.567$]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[$arrow$ Convert it to a fraction $square/square$!]
#only("1")[#voiceover("Let's test your knowledge on converting complex decimals to fractions. Consider the decimal number four point five six seven.")]
#only("2")[#voiceover("Can you convert it into a fraction, where we divide one number by another?")]
]

//Type: FREE 
#questionDef( 
questionText: "What fraction is $4.567$ equal to?", 
answerOptions: ("$\\frac{4567}{1000}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)