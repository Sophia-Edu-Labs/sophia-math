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
#only("1-")[What is $3/4$ as a decimal?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $0.34$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $0.43$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $0.75$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $0.57$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. What is three fourths as a decimal?")]
#only("2")[#voiceover("Is it zero point three four,")]
#only("3")[#voiceover("or is it zero point four three,")]
#only("4")[#voiceover("or maybe zero point seven five,")]
#only("5")[#voiceover("or is it zero point five seven?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{3}{4}$ as a decimal?", 
answerOptions: ("$0.34$", "$0.43$", "$0.75$", "$0.57$"),
correctAnswerIndex: 2 
)