#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)
#only("1-")[Can $mat(1, 2; 3, 4)$ be multiplied by $mat(5; 6)$?]
#v(40pt)
#only("2-")[a) Yes]
#v(10pt)
#only("3-")[b) No]
#only("1")[#voiceover("Let's test your understanding of matrix multiplication. Can the matrix with elements 1, 2, 3, and 4 be multiplied by the matrix with elements 5 and 6?")]
#only("2")[#voiceover("Is the answer yes,")]
#only("3")[#voiceover("or is it no?")]
]#questionDef(
questionText: "Can $\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \end{pmatrix}$ be multiplied by $\begin{pmatrix} 5 \\\\ 6 \end{pmatrix}$?",
answerOptions: ("Yes", "No"),
correctAnswerIndex: 0,
)