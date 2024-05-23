#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[
Consider the matrix:
#v(20pt)
$mat(1, 2, 3; 4, 5, 6; 7, 8, 9)$
]
#only("1")[
#voiceover("Consider the following 3 by 3 matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
Find the rank of the matrix using Gaussian elimination. 🧮
]
#only("1")[
#voiceover("Your task is to find the rank of this matrix using Gaussian elimination.")
]
]#questionDef(
questionText: "What is the rank of the matrix $\\begin{pmatrix} 1 & 2 & 3 \\\\ 4 & 5 & 6 \\\\ 7 & 8 & 9 \\end{pmatrix}$?",
answerOptions: ("1", "2", "3"),
correctAnswerIndex: 1,
)