#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's apply the Gaussian Algorithm to a matrix.")
]

#text(size: 30pt, weight: "bold")[Gaussian Algorithm - First Step]
// The title "Gaussian Algorithm - First Step" is shown on all slides

#v(40pt)

#only("2-")[Consider the matrix: $mat(0, 1; 1, 2)$]
// The matrix is shown from slide 2 onward

#v(40pt)

#only("3-")[What is the result of applying the first step of the Gaussian Algorithm to this matrix? 🤔]
// The question is shown from slide 3 onward

#only("2")[
#voiceover("Consider the matrix with elements zero, one in the first row and one, two in the second row.")
]

#only("3")[
#voiceover("What is the result of applying the first step of the Gaussian Algorithm, which is swapping rows if necessary, to this matrix?")
]

]#questionDef(
questionText: "What is the result of applying the first step of the Gaussian Algorithm to the matrix $\begin{pmatrix} 0 & 1 \\\\ 1 & 2 \end{pmatrix}$?",
answerOptions: ("The result is $\begin{pmatrix} 1 & 2 \\\\ 0 & 1 \end{pmatrix}$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)