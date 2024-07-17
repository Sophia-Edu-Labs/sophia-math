#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplication of Fractions]
// The title "Multiplication of Fractions" is shown on this slide
#v(40pt)
#only("1-")[What is the result of multiplying $7/3$ by $6 2/5$?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $42/15$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $45/5$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $74/5$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $44/5$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on multiplying fractions. What is the result of multiplying seven thirds by six and two fifths?")]
#only("2")[#voiceover("Is it forty-two fifteenths,")]
#only("3")[#voiceover("or is it forty-five fifths,")]
#only("4")[#voiceover("or maybe seventy-four fifths,")]
#only("5")[#voiceover("or is it forty-four fifths?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $\frac{7}{3}$ by $6 \frac{2}{5}$.", 
answerOptions: ("$\frac{42}{15}$", "$\frac{45}{5}$", "$\frac{74}{5}$", "$\frac{44}{5}$"),
correctAnswerIndex: 2 
)