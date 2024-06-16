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
#only("1-")[What is $9/10$ as a decimal?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $0.9$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $9.0$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $0.09$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $90$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. What is nine over ten as a decimal?")]
#only("2")[#voiceover("Is it zero point nine,")]
#only("3")[#voiceover("or is it nine point zero,")]
#only("4")[#voiceover("or maybe zero point zero nine,")]
#only("5")[#voiceover("or is it ninety?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{9}{10}$ as a decimal?", 
answerOptions: ("$0.9$", "$9.0$", "$0.09$", "$90$"),
correctAnswerIndex: 0 
)