#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
// The title "Converting Fractions to Decimals" is shown on this slide
#v(40pt)
#only("1-")[What is $1/2$ as a decimal?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $0.2$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $0.5$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $2.0$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $5.0$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. What is one half as a decimal?")]
#only("2")[#voiceover("Is it zero point two,")]
#only("3")[#voiceover("or is it zero point five,")]
#only("4")[#voiceover("or maybe two point zero,")]
#only("5")[#voiceover("or is it five point zero?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{1}{2}$ as a decimal?", 
answerOptions: ("$0.2$", "$0.5$", "$2.0$", "$5.0$"),
correctAnswerIndex: 1
)