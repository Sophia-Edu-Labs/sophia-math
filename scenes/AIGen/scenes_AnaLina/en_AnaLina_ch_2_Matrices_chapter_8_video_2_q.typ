#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Transposition]
// The title "Matrix Transposition" is shown on this slide
#v(40pt)
#only("1-")[What is the transpose of the matrix $mat(1, 2; 3, 4)$? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $mat(1, 2; 3, 4)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $mat(2, 1; 4, 3)$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $mat(1, 3; 2, 4)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $mat(4, 3; 2, 1)$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on matrix transposition. What is the transpose of the matrix with elements 1, 2 in the first row and 3, 4 in the second row?")]
#only("2")[#voiceover("Is it the matrix with elements 1, 2 in the first row and 3, 4 in the second row,")]
#only("3")[#voiceover("or is it the matrix with elements 2, 1 in the first row and 4, 3 in the second row,")]
#only("4")[#voiceover("or maybe it's the matrix with elements 1, 3 in the first row and 2, 4 in the second row,")]
#only("5")[#voiceover("or is it the matrix with elements 4, 3 in the first row and 2, 1 in the second row?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the transpose of the matrix $\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$?",
answerOptions: ("$\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$", "$\begin{pmatrix} 2 & 1 \\ 4 & 3 \end{pmatrix}$", "$\begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix}$", "$\begin{pmatrix} 4 & 3 \\ 2 & 1 \end{pmatrix}$"),
correctAnswerIndex: 2,
)