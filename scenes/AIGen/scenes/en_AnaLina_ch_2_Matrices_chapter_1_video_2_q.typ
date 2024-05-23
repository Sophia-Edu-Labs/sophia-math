#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Row Matrix]
// The title "Row Matrix" is shown on this slide
#v(40pt)
#only("1-")[Which of the following is a row matrix? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $mat(1; 2; 3)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $mat(1, 2, 3)$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $mat(1, 2; 3, 4)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $mat(0, 0; 0, 0)$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on row matrices. Which of the following is a row matrix?")]
#only("2")[#voiceover("Is it matrix a, with elements 1, 2, and 3 arranged in a column,")]
#only("3")[#voiceover("or is it matrix b, with elements 1, 2, and 3 arranged in a row,")]
#only("4")[#voiceover("or maybe matrix c, a 2 by 2 matrix with elements 1, 2, 3, and 4,")]
#only("5")[#voiceover("or lastly, is it matrix d, a 2 by 2 zero matrix?")]
]#questionDef(
questionText: "Which of the following is a row matrix?",
answerOptions: ("$\\begin{pmatrix} 1 \\\\ 2 \\\\ 3 \\end{pmatrix}$", "$\\begin{pmatrix} 1 & 2 & 3 \\end{pmatrix}$", "$\\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \\end{pmatrix}$", "$\\begin{pmatrix} 0 & 0 \\\\ 0 & 0 \\end{pmatrix}$"),
correctAnswerIndex: 1,
)