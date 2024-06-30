#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[What is $19/8$ as a decimal?]
#v(20pt)

#only("2-")[a) 2.375]
#v(10pt)
#only("3-")[b) 2.3]
#v(10pt)
#only("4-")[c) 2.0]
#v(10pt)
#only("5-")[d) 2.5]

#only("1")[#voiceover("Let's practice converting fractions to decimals. Here's our question: What is nineteen eighths as a decimal?")]
#only("2")[#voiceover("Is it two point three seven five,")]
#only("3")[#voiceover("or is it two point three,")]
#only("4")[#voiceover("or perhaps it's simply two point zero,")]
#only("5")[#voiceover("or could it be two point five? Think about it carefully before choosing your answer.")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{19}{8}$ as a decimal?", 
answerOptions: ("$2.375$", "$2.3$", "$2.0$", "$2.5$"),
correctAnswerIndex: 0 
)