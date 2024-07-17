#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplication of Fractions]
#v(40pt)
#only("1")[
#voiceover("Let's consider the exercise.")
]
#only("2-")[
#text()[$2 dot 3/4$]
]
#v(20pt)
#only("3-")[
#text()[$2$ times $3/4$]
]
#only("4-")[
#text()[$2$ times $3$ divided by $4$]
]
#only("5-")[
#text()[$6/4$]
]
#only("6-")[
#text()[$3/2$]
]
#only("2")[
#voiceover("We need to multiply two by three fourths.")
]
#only("3")[
#voiceover("This can be written as two times three divided by four.")
]
#only("4")[
#voiceover("So, two times three is six, and we divide by four.")
]
#only("5")[
#voiceover("This simplifies to six fourths.")
]
#only("6")[
#voiceover("And further simplifies to three halves.")
]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $2$ by $\frac{3}{4}$.", 
answerOptions: ("$\frac{3}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)