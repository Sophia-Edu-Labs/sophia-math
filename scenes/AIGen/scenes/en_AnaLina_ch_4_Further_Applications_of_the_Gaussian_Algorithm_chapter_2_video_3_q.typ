#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[System of Linear Equations]
#v(40pt)
#only("1-")[Consider the system of linear equations:
$mat(1, 2; 3, 4) * mat(x; y) = mat(5; 11)$]
// The system of linear equations is shown from slide 1 onward
#v(40pt)
#only("2-")[Is this system solvable? 🤔]
// The question is posed from slide 2 onward
#only("1")[
#voiceover("Consider the following system of linear equations: The matrix 1, 2; 3, 4 multiplied by the vector x; y equals the vector 5; 11.")
]
#only("2")[
#voiceover("The question is: Is this system of linear equations solvable?")
]
]#questionDef(
questionText: "Is the system $ \begin{pmatrix} 1 & 2 \\\\ 3 & 4 \end{pmatrix} \begin{pmatrix} x \\\\ y \end{pmatrix} = \begin{pmatrix} 5 \\\\ 11 \end{pmatrix} $ solvable?",
answerOptions: ("Yes", "No"),
correctAnswerIndex: 0,
)