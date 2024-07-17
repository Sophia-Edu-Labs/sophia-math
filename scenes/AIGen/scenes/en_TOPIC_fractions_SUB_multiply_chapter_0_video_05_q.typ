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
#only("1-")[8) Exercise (MC): Multiply $6$ by $5/6$]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $5/6$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $10/6$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $15/6$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $30/6$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on multiplying fractions. Here is the exercise: Multiply 6 by 5 over 6.")]
#only("2")[#voiceover("Is the result 5 over 6,")]
#only("3")[#voiceover("or is it 10 over 6,")]
#only("4")[#voiceover("or maybe 15 over 6,")]
#only("5")[#voiceover("or is it 30 over 6?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $6$ by $\frac{5}{6}$.", 
answerOptions: ("$\frac{5}{6}$", "$\frac{10}{6}$", "$\frac{15}{6}$", "$\frac{30}{6}$"),
correctAnswerIndex: 3 
)