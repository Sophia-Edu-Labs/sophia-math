#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)
#only("1")[#voiceover("Let's solve an exercise involving the multiplication of fractions.")]
#only("2-")[- Exercise: Multiply $3/4$ by $4/5$ by $5/6$]
#v(20pt)
#only("2")[#voiceover("Multiply three fourths by four fifths by five sixths.")]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $\frac{3}{4}$ by $\frac{4}{5}$ by $\frac{5}{6}$.", 
answerOptions: ("$\frac{1}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)