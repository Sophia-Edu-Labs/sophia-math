#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[What is $3/25$ as a decimal?]
#v(20pt)

#only("2-")[a) 0.12]
#v(10pt)
#only("3-")[b) 0.13]
#v(10pt)
#only("4-")[c) 0.14]
#v(10pt)
#only("5-")[d) 0.15]

#only("1")[#voiceover("Let's practice converting fractions to decimals. Here's a question for you: What is three twenty-fifths as a decimal?")]
#only("2")[#voiceover("Is it zero point one two,")]
#only("3")[#voiceover("or zero point one three,")]
#only("4")[#voiceover("or zero point one four,")]
#only("5")[#voiceover("or is it zero point one five?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{3}{25}$ as a decimal?", 
answerOptions: ("$0.12$", "$0.13$", "$0.14$", "$0.15$"),
correctAnswerIndex: 1 
)