#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Complex Fractions to Decimals]
// The title "Converting Complex Fractions to Decimals" is shown on this slide
#v(40pt)
#only("1-")[What is $11/20$ as a decimal?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $0.55$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $0.5$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $0.525$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $0.50$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting complex fractions to decimals. What is eleven over twenty as a decimal?")]
#only("2")[#voiceover("Is it zero point five five,")]
#only("3")[#voiceover("or is it zero point five,")]
#only("4")[#voiceover("or maybe zero point five two five,")]
#only("5")[#voiceover("or is it zero point five zero?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\\frac{11}{20}$ as a decimal?", 
answerOptions: ("$0.55$", "$0.5$", "$0.525$", "$0.50$"),
correctAnswerIndex: 0
)