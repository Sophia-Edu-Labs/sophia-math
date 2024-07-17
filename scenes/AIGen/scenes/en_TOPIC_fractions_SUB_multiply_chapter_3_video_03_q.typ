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
#only("1-")[Multiply $4 1/2$ by $2/3$.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $9/6$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $8/3$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $6/3$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $6/4$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on multiplying fractions. Multiply four and one half by two thirds.")]
#only("2")[#voiceover("Is the result nine sixths,")]
#only("3")[#voiceover("or is it eight thirds,")]
#only("4")[#voiceover("or maybe six thirds,")]
#only("5")[#voiceover("or is it six fourths?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $4 \frac{1}{2}$ by $\frac{2}{3}$.", 
answerOptions: ("$\frac{9}{6}$", "$\frac{8}{3}$", "$\frac{6}{3}$", "$\frac{6}{4}$"),
correctAnswerIndex: 1 
)