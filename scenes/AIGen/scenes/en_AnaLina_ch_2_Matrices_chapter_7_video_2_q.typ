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
#only("1-")[What is the inverse of the matrix $mat(2, 1; 1, 2)$? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $mat(2, -1; -1, 2)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $mat(0.5, -0.25; -0.25, 0.5)$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $mat(1, 0; 0, 1)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $mat(2, 1; 1, 2)$]
// Answer option d) is shown from slide 5 onward

#only("1")[#voiceover("Let's test your understanding of matrix inverses. What is the inverse of the matrix with elements 2, 1 in the first row and 1, 2 in the second row?")]
#only("2")[#voiceover("Is it the matrix with elements 2, negative 1 in the first row and negative 1, 2 in the second row,")]
#only("3")[#voiceover("or is it the matrix with elements 0.5, negative 0.25 in the first row and negative 0.25, 0.5 in the second row,")]
#only("4")[#voiceover("or maybe it's the identity matrix with elements 1, 0 in the first row and 0, 1 in the second row,")]
#only("5")[#voiceover("or is the inverse actually the same as the original matrix with elements 2, 1 in the first row and 1, 2 in the second row?")]
]#questionDef(
questionText: "What is the inverse of the matrix $\begin{pmatrix} 2 & 1 \\\\ 1 & 2 \end{pmatrix}$?",
answerOptions: ("$\begin{pmatrix} 2 & -1 \\\\ -1 & 2 \end{pmatrix}$", "$\begin{pmatrix} 0.5 & -0.25 \\\\ -0.25 & 0.5 \end{pmatrix}$", "$\begin{pmatrix} 1 & 0 \\\\ 0 & 1 \end{pmatrix}$", "$\begin{pmatrix} 2 & 1 \\\\ 1 & 2 \end{pmatrix}$"),
correctAnswerIndex: 1,
)