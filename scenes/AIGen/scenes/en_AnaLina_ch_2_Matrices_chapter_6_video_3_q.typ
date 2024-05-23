#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse of a Matrix]
#v(40pt)
#only("1-")[Consider the matrix $mat(2, 0; 0, 2)$]
#v(20pt)
#only("2-")[Find the inverse of this matrix.]
#only("1")[
#voiceover("Consider the matrix mat 2, 0; 0, 2.")
]
#only("2")[
#voiceover("Find the inverse of this matrix.")
]
]#questionDef(
questionText: "What is the inverse of the matrix $\\begin{pmatrix} 2 & 0 \\\\ 0 & 2 \\end{pmatrix}$?",
answerOptions: ("The inverse is $\\begin{pmatrix} 0.5 & 0 \\\\ 0 & 0.5 \\end{pmatrix}$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)