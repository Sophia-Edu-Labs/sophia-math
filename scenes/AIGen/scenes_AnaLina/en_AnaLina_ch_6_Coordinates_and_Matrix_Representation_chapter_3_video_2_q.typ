#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping]
// The title "Linear Mapping" is shown on this slide
#v(40pt)
#only("1-")[To find the image of a vector under a linear mapping, we \_\_\_\_ the matrix by the vector.]
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
#only("5-")[d) divide]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of linear mappings. To find the image of a vector under a linear mapping, what do we do with the matrix and the vector?")]
#only("2")[#voiceover("Do we add the matrix and the vector,")]
#only("3")[#voiceover("or do we subtract the matrix from the vector,")]
#only("4")[#voiceover("or do we multiply the matrix by the vector,")]
#only("5")[#voiceover("or do we divide the matrix by the vector?")]
]#questionDef(
questionText: "To find the image of a vector under a linear mapping, we multiply the matrix by the vector.",
answerOptions: ("add", "subtract", "multiply", "divide"),
correctAnswerIndex: 2,
)