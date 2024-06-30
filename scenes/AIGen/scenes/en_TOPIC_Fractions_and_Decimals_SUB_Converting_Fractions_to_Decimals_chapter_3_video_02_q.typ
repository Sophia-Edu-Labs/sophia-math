#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[What is $1/2$ as a decimal?]
#v(20pt)

#only("2-")[a) 0.2]
#v(10pt)
#only("3-")[b) 0.5]
#v(10pt)
#only("4-")[c) 2.0]
#v(10pt)
#only("5-")[d) 5.0]

#only("1")[#voiceover("Let's practice converting fractions to decimals. Our question today is: What is one-half as a decimal?")]
#only("2")[#voiceover("Is it zero point two,")]
#only("3")[#voiceover("or zero point five,")]
#only("4")[#voiceover("or perhaps two point zero,")]
#only("5")[#voiceover("or maybe five point zero? Think about it carefully before choosing your answer.")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{1}{2}$ as a decimal?", 
answerOptions: ("$0.2$", "$0.5$", "$2.0$", "$5.0$"),
correctAnswerIndex: 1 
)