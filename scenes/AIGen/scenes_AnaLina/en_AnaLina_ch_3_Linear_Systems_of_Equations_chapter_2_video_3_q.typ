#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Upper Triangular Matrix]
// The title "Upper Triangular Matrix" is shown on this slide
#v(40pt)
#only("1-")[Which of the following is an upper triangular matrix? 🔼]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $mat(1, 2; 3, 4)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $mat(1, 0; 0, 1)$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $mat(1, 2; 0, 3)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $mat(0, 1; 1, 0)$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on upper triangular matrices. Which of the following matrices is an upper triangular matrix?")]
#only("2")[#voiceover("Is it the matrix with elements 1, 2 in the first row and 3, 4 in the second row,")]
#only("3")[#voiceover("or is it the identity matrix with 1s on the main diagonal and 0s elsewhere,")]
#only("4")[#voiceover("or maybe the matrix with 1, 2 in the first row and 0, 3 in the second row,")]
#only("5")[#voiceover("or is it the matrix with 0, 1 in the first row and 1, 0 in the second row?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following is an upper triangular matrix?",
answerOptions: ("$\\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \\end{pmatrix}$", "$\\begin{pmatrix} 1 & 0 \\\\ 0 & 1 \\end{pmatrix}$", "$\\begin{pmatrix} 1 & 2 \\\\ 0 & 3 \\end{pmatrix}$", "$\\begin{pmatrix} 0 & 1 \\\\ 1 & 0 \\end{pmatrix}$"),
correctAnswerIndex: 2
)