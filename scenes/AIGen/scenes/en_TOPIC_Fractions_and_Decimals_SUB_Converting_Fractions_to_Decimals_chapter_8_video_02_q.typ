#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting More Complex Fractions to Decimals]
#v(40pt)
#only("1-")[What is $3/25$ as a decimal?]
#v(40pt)
#only("2-")[a) $0.12$]
#v(10pt)
#only("3-")[b) $0.13$]
#v(10pt)
#only("4-")[c) $0.14$]
#v(10pt)
#only("5-")[d) $0.15$]
#only("1")[#voiceover("Let's test your knowledge on converting more complex fractions to decimals. What is three over twenty-five as a decimal?")]
#only("2")[#voiceover("Is it zero point one two,")]
#only("3")[#voiceover("or is it zero point one three,")]
#only("4")[#voiceover("or maybe zero point one four,")]
#only("5")[#voiceover("or is it zero point one five?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{3}{25}$ as a decimal?", 
answerOptions: ("$0.12$", "$0.13$", "$0.14$", "$0.15$"),
correctAnswerIndex: 0
)