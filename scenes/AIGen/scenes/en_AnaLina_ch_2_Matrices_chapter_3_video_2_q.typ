#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Scalar Multiplication]
#v(40pt)
#only("1-")[Given the matrix $mat(1, 2; 3, 4)$, what is the result of multiplying it by 2?]
#v(40pt)
#only("2-")[a) $mat(1, 2; 3, 4)$]
#v(10pt)
#only("3-")[b) $mat(2, 4; 6, 8)$]
#v(10pt)
#only("4-")[c) $mat(0.5, 1; 1.5, 2)$]
#v(10pt)
#only("5-")[d) $mat(3, 6; 9, 12)$]
#only("1")[#voiceover("Let's practice scalar multiplication of matrices. Given the matrix 1, 2; 3, 4, what is the result when you multiply it by 2?")]
#only("2")[#voiceover("Is it the matrix 1, 2; 3, 4,")]
#only("3")[#voiceover("or is it the matrix 2, 4; 6, 8,")]
#only("4")[#voiceover("or maybe the matrix 0.5, 1; 1.5, 2,")]
#only("5")[#voiceover("or is it the matrix 3, 6; 9, 12?")]
]#questionDef(
questionText: "What is the result of multiplying $\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \end{pmatrix}$ by 2?",
answerOptions: ("$\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \end{pmatrix}$", "$\begin{pmatrix} 2 & 4 \\\\ 6 & 8 \end{pmatrix}$", "$\begin{pmatrix} 0.5 & 1 \\\\ 1.5 & 2 \end{pmatrix}$", "$\begin{pmatrix} 3 & 6 \\\\ 9 & 12 \end{pmatrix}$"),
correctAnswerIndex: 1,
)