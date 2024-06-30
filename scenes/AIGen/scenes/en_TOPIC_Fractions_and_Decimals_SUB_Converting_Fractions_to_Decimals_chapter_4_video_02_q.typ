#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[What is $3/8$ as a decimal?]
#v(20pt)

#only("2-")[a) 0.375]
#v(10pt)
#only("3-")[b) 0.38]
#v(10pt)
#only("4-")[c) 0.35]
#v(10pt)
#only("5-")[d) 0.3]

#only("1")[#voiceover("Let's practice converting fractions to decimals. Here's our question: What is three-eighths as a decimal?")]
#only("2")[#voiceover("Is it zero point three seven five?")]
#only("3")[#voiceover("Or is it zero point three eight?")]
#only("4")[#voiceover("Maybe it's zero point three five?")]
#only("5")[#voiceover("Or could it be simply zero point three?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{3}{8}$ as a decimal?", 
answerOptions: ("$0.375$", "$0.38$", "$0.35$", "$0.3$"),
correctAnswerIndex: 0 
)