#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication Exercise]
#v(40pt)
#only("1-")[What is the result of multiplying $mat(1, 2; 3, 4)$ by $mat(5, 6; 7, 8)$?]
#v(40pt)
#only("2-")[a) $mat(19, 22; 43, 50)$]
#v(10pt)
#only("3-")[b) $mat(5, 12; 21, 32)$]
#v(10pt)
#only("4-")[c) $mat(1, 2; 3, 4)$]
#v(10pt)
#only("5-")[d) $mat(6, 8; 10, 12)$]
#only("1")[#voiceover("Let's practice matrix multiplication. What is the result of multiplying the matrix with elements 1, 2, 3, and 4 by the matrix with elements 5, 6, 7, and 8?")]
#only("2")[#voiceover("Is it the matrix with elements 19, 22, 43, and 50,")]
#only("3")[#voiceover("or is it the matrix with elements 5, 12, 21, and 32,")]
#only("4")[#voiceover("or maybe the matrix with elements 1, 2, 3, and 4,")]
#only("5")[#voiceover("or is it the matrix with elements 6, 8, 10, and 12?")]
]#questionDef(
questionText: "What is the result of multiplying $\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \end{pmatrix}$ by $\begin{pmatrix} 5 & 6 \\\\ 7 & 8 \end{pmatrix}$?",
answerOptions: ("$\begin{pmatrix} 19 & 22 \\\\ 43 & 50 \end{pmatrix}$", "$\begin{pmatrix} 5 & 12 \\\\ 21 & 32 \end{pmatrix}$", "$\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \end{pmatrix}$", "$\begin{pmatrix} 6 & 8 \\\\ 10 & 12 \end{pmatrix}$"),
correctAnswerIndex: 0,
)