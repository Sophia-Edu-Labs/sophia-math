#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[What is $5/4$ as a decimal?]
#v(20pt)

#only("2-")[a) 1.25]
#v(10pt)
#only("3-")[b) 1.2]
#v(10pt)
#only("4-")[c) 1.15]
#v(10pt)
#only("5-")[d) 1.3]

#only("1")[#voiceover("Let's practice converting fractions to decimals. Here's our question: What is five-fourths as a decimal?")]
#only("2")[#voiceover("Is it one point two five,")]
#only("3")[#voiceover("or one point two,")]
#only("4")[#voiceover("or one point one five,")]
#only("5")[#voiceover("or one point three? Think about it carefully before choosing your answer.")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{5}{4}$ as a decimal?", 
answerOptions: ("$1.25$", "$1.2$", "$1.15$", "$1.3$"),
correctAnswerIndex: 0 
)