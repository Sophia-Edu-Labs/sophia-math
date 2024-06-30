#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)

#only("1-")[What is $19/4$ as a decimal?]
#v(20pt)

#only("2-")[a) 4.75]
#v(10pt)
#only("3-")[b) 4.7]
#v(10pt)
#only("4-")[c) 4.25]
#v(10pt)
#only("5-")[d) 4.5]

#only("1")[#voiceover("Let's practice converting fractions to decimals. Here's our question: What is nineteen fourths as a decimal?")]
#only("2")[#voiceover("Is it four point seven five,")]
#only("3")[#voiceover("or is it four point seven,")]
#only("4")[#voiceover("or perhaps four point two five,")]
#only("5")[#voiceover("or maybe four point five?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{19}{4}$ as a decimal?", 
answerOptions: ("$4.75$", "$4.7$", "$4.25$", "$4.5$"),
correctAnswerIndex: 0 
)