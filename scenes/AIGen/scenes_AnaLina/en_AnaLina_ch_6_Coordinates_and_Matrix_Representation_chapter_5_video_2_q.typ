#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation with Change of Basis]
// The title "Matrix Representation with Change of Basis" is shown on this slide
#v(40pt)
#only("1-")[To find the matrix representation of a linear mapping with respect to a new basis, we need to \_\_\_\_ the original matrix by the change of basis matrix.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) add]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) subtract]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) multiply]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) invert]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of matrix representation with change of basis. To find the matrix representation of a linear mapping with respect to a new basis, we need to perform which operation on the original matrix and the change of basis matrix?")]
#only("2")[#voiceover("Do we need to add the original matrix and the change of basis matrix,")]
#only("3")[#voiceover("or do we need to subtract them,")]
#only("4")[#voiceover("or do we need to multiply them,")]
#only("5")[#voiceover("or do we need to invert the change of basis matrix?")]
]#questionDef(
questionText: "To find the matrix representation of a linear mapping with respect to a new basis, we need to \$ \\text{multiply} \$ the original matrix by the change of basis matrix.",
answerOptions: ("add", "subtract", "multiply", "invert"),
correctAnswerIndex: 2
)