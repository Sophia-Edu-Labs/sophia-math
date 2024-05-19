#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Transpose of a Matrix]
// The title "Transpose of a Matrix" is shown on all slides

#v(40pt)

#only("1-")[Consider the matrix $mat(5, 6; 7, 8)$]
// The matrix is shown from slide 1 onward

#v(40pt)

#only("2-")[What is the transpose of this matrix? 🤔]
// The question is posed from slide 2 onward

#only("1")[
#voiceover("Consider the matrix with elements 5, 6, 7, and 8.")
]

#only("2")[
#voiceover("What is the transpose of this matrix?")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the transpose of the matrix $\begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$?",
answerOptions: ("The transpose is $\begin{pmatrix} 5 & 7 \\ 6 & 8 \end{pmatrix}$.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)