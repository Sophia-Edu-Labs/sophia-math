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
#only("1-")[Consider the following exercise: Multiply $3/4$ by $4/5$.]
// The exercise statement is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $7/9$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $10/12$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $12/20$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $12/15$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on multiplying fractions. Consider the following exercise: Multiply three-fourths by four-fifths.")]
#only("2")[#voiceover("Is the result seven-ninths,")]
#only("3")[#voiceover("or is it ten-twelfths,")]
#only("4")[#voiceover("or maybe twelve-twentieths,")]
#only("5")[#voiceover("or is it twelve-fifteenths?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $\frac{3}{4}$ by $\frac{4}{5}$.", 
answerOptions: ("$\frac{7}{9}$", "$\frac{10}{12}$", "$\frac{12}{20}$", "$\frac{12}{15}$"),
correctAnswerIndex: 2 
)