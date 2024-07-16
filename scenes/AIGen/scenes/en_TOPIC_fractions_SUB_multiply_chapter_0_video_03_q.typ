#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
// The title "Multiplying Fractions" is shown on this slide
#v(40pt)
#only("1-")[What is the result of multiplying $4$ by $2/3$?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $4/3$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $6/3$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $8/3$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $10/3$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on multiplying fractions. What is the result of multiplying 4 by two thirds?")]
#only("2")[#voiceover("Is it four thirds,")]
#only("3")[#voiceover("or is it six thirds,")]
#only("4")[#voiceover("or maybe eight thirds,")]
#only("5")[#voiceover("or is it ten thirds?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $4$ by $\frac{2}{3}$.", 
answerOptions: ("$\frac{4}{3}$", "$\frac{6}{3}$", "$\frac{8}{3}$", "$\frac{10}{3}$"),
correctAnswerIndex: 2 
)