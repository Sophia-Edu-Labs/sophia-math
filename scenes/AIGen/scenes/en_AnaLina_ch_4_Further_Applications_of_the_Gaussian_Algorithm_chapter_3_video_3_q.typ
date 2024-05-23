#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertibility]
#v(40pt)
#only("1-")[Consider the matrix $mat(2, 3; 4, 6)$]
#only("1")[
#voiceover("Consider the matrix with elements 2, 3 in the first row and 4, 6 in the second row.")
]
#v(40pt)
#only("2-")[Is this matrix invertible? 🤔]
#only("2")[
#voiceover("Is this matrix invertible?")
]
]#questionDef(
questionText: "Is the matrix $\\begin{pmatrix} 2 & 3 \\\\ 4 & 6 \\end{pmatrix}$ invertible?",
answerOptions: ("Yes", "No"),
correctAnswerIndex: 1
)