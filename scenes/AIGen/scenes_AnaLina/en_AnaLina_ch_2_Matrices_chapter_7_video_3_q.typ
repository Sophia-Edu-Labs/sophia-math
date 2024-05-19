#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Inverse of a Matrix]
// The title "Inverse of a Matrix" is shown on all slides

#v(40pt)

#only("1-")[Given the matrix $mat(1, 2; 3, 4)$]
// The given matrix is shown from slide 1 onward

#v(40pt)

#only("2-")[Find the inverse of this matrix.]
// The question "Find the inverse of this matrix." is shown from slide 2 onward

#only("1")[
#voiceover("Consider the following matrix: 1, 2; 3, 4.")
]

#only("2")[
#voiceover("Your task is to find the inverse of this matrix.")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the inverse of the matrix $\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$?",
answerOptions: ("The inverse is $\begin{pmatrix} -2 & 1 \\ 1.5 & -0.5 \end{pmatrix}$, or an equivalent matrix.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)