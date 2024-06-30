#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[What is $7/8$ as a decimal?]
#v(20pt)

#only("2-")[a) 0.875]
#v(10pt)
#only("3-")[b) 0.87]
#v(10pt)
#only("4-")[c) 0.85]
#v(10pt)
#only("5-")[d) 0.8]

#only("1")[#voiceover("Let's practice converting fractions to decimals. Here's our question: What is seven-eighths as a decimal?")]
#only("2")[#voiceover("Is it 0.875,")]
#only("3")[#voiceover("or 0.87,")]
#only("4")[#voiceover("maybe 0.85,")]
#only("5")[#voiceover("or could it be 0.8? Think about it, and we'll discuss the solution in the next video!")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{7}{8}$ as a decimal?", 
answerOptions: ("$0.875$", "$0.87$", "$0.85$", "$0.8$"),
correctAnswerIndex: 0 
)