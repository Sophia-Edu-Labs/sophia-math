#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
// Title of the slide
#v(40pt)
#only("1-")[Exercise: Multiply $2/3$ by $3/4$ by $4/5$.]
// The exercise question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $24/60$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $20/60$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $18/60$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $24/45$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's practice multiplying fractions. Here is the exercise: Multiply two thirds by three fourths by four fifths.")]
#only("2")[#voiceover("Is the result twenty-four sixtieths,")]
#only("3")[#voiceover("or is it twenty sixtieths,")]
#only("4")[#voiceover("or maybe eighteen sixtieths,")]
#only("5")[#voiceover("or is it twenty-four forty-fifths?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $\frac{2}{3}$ by $\frac{3}{4}$ by $\frac{4}{5}$.", 
answerOptions: ("$\frac{24}{60}$", "$\frac{20}{60}$", "$\frac{18}{60}$", "$\frac{24}{45}$"),
correctAnswerIndex: 0 
)