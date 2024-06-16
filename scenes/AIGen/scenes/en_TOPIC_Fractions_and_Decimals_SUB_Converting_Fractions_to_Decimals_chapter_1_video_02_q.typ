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
#only("1-")[What is $25/100$ as a decimal?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $2.5$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $0.25$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $25.0$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $0.025$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. What is twenty-five over one hundred as a decimal?")]
#only("2")[#voiceover("Is it two point five,")]
#only("3")[#voiceover("or is it zero point two five,")]
#only("4")[#voiceover("or maybe twenty-five point zero,")]
#only("5")[#voiceover("or is it zero point zero two five?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{25}{100}$ as a decimal?", 
answerOptions: ("$2.5$", "$0.25$", "$25.0$", "$0.025$"),
correctAnswerIndex: 1 
)