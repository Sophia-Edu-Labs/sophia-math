#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Equation]
// The title "Matrix Equation" is shown on this slide
#v(40pt)
#only("1-")[Consider the matrix equation: $A x = b$]
// The matrix equation is shown from slide 1 onward
#v(40pt)
#only("2-")[What does $A$ represent?]
// The question is shown from slide 2 onward
#v(40pt)
#only("3-")[a) Variable vector]
// Answer option a) is shown from slide 3 onward
#v(10pt)
#only("4-")[b) Coefficient matrix]
// Answer option b) is shown from slide 4 onward
#v(10pt)
#only("5-")[c) Constant vector]
// Answer option c) is shown from slide 5 onward
#v(10pt)
#only("6-")[d) Solution vector]
// Answer option d) is shown from slide 6 onward
#only("1")[#voiceover("Consider the matrix equation A x equals b.")]
#only("2")[#voiceover("What does the letter A represent in this equation?")]
#only("3")[#voiceover("Is it the variable vector,")]
#only("4")[#voiceover("or the coefficient matrix,")]
#only("5")[#voiceover("or maybe the constant vector,")]
#only("6")[#voiceover("or is it the solution vector?")]
]#questionDef(
questionText: "In the matrix equation $A x = b$, what does $A$ represent?",
answerOptions: ("Variable vector", "Coefficient matrix", "Constant vector", "Solution vector"),
correctAnswerIndex: 1,
)