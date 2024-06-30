#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[What is $5/8$ as a decimal?]
#v(20pt)

#only("2-")[a) 0.625]
#v(10pt)
#only("3-")[b) 0.62]
#v(10pt)
#only("4-")[c) 0.65]
#v(10pt)
#only("5-")[d) 0.6]

#only("1")[#voiceover("Let's practice converting fractions to decimals. Here's our question: What is five-eighths as a decimal?")]
#only("2")[#voiceover("Is it zero point six two five,")]
#only("3")[#voiceover("or zero point six two,")]
#only("4")[#voiceover("or maybe zero point six five,")]
#only("5")[#voiceover("or is it simply zero point six?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{5}{8}$ as a decimal?", 
answerOptions: ("$0.625$", "$0.62$", "$0.65$", "$0.6$"),
correctAnswerIndex: 0 
)