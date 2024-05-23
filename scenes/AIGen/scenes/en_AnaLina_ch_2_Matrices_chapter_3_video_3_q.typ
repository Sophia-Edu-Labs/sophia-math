#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's practice scalar multiplication of matrices.")
]

#text(size: 30pt, weight: "bold")[Scalar Multiplication]
// The title "Scalar Multiplication" is shown on all slides

#v(40pt)

#only("2-")[- Multiply each element of the matrix by the scalar]
// The bullet point is shown from slide 2 onward

#v(40pt)

#only("3-")[Multiply $mat(1, 2; 3, 4)$ by $3$.]
// The question is shown from slide 3 onward

#only("2")[
#voiceover("To multiply a matrix by a scalar, we multiply each element of the matrix by the scalar.")
]

#only("3")[
#voiceover("Here's an example. Multiply the matrix with elements 1, 2, 3, and 4 by the scalar 3.")
]

]#questionDef(
questionText: "What is the result of multiplying the matrix $\\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \\end{pmatrix}$ by the scalar $3$?",
answerOptions: ("The result is $\\begin{pmatrix} 3 & 6 \\\\ 9 & 12 \\end{pmatrix}$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)