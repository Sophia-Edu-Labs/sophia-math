#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse of a Matrix]
// The title "Inverse of a Matrix" is shown on this slide
#v(40pt)
#only("1-")[What is the inverse of the matrix $mat(1, 0; 0, 1)$?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $mat(1, 0; 0, 1)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $mat(0, 1; 1, 0)$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $mat(1, 1; 1, 1)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $mat(2, 0; 0, 2)$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of matrix inverses. What is the inverse of the matrix with elements 1, 0 in the first row and 0, 1 in the second row?")]
#only("2")[#voiceover("Is it the matrix with elements 1, 0 in the first row and 0, 1 in the second row,")]
#only("3")[#voiceover("or is it the matrix with elements 0, 1 in the first row and 1, 0 in the second row,")]
#only("4")[#voiceover("or maybe the matrix with all elements being 1,")]
#only("5")[#voiceover("or is it the matrix with elements 2, 0 in the first row and 0, 2 in the second row?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the inverse of the matrix $mat(1, 0; 0, 1)$?",
answerOptions: ("$mat(1, 0; 0, 1)$", "$mat(0, 1; 1, 0)$", "$mat(1, 1; 1, 1)$", "$mat(2, 0; 0, 2)$"),
correctAnswerIndex: 0,
)