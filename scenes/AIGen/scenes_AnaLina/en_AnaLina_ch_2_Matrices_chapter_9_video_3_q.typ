#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Given:]
#v(20pt)
#only("2-")[- $A = mat(1, 2; 3, 4)$]
#v(10pt)
#only("3-")[- $B = mat(5, 6; 7, 8)$]
#v(40pt)
#only("4-")[Find: $(A + B)^T$]
#only("1")[
#voiceover("Let's consider the following exercise.")
]
#only("2")[
#voiceover("Given matrix A equals the 2 by 2 matrix with elements 1, 2, 3, and 4,")
]
#only("3")[
#voiceover("and matrix B equals the 2 by 2 matrix with elements 5, 6, 7, and 8,")
]
#only("4")[
#voiceover("find the transpose of the sum of A and B.")
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Given $A = \\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \\end{pmatrix}$ and $B = \\begin{pmatrix} 5 & 6 \\\\ 7 & 8 \\end{pmatrix}$, find $(A + B)^T$.",
answerOptions: ("The correct answer is $\\begin{pmatrix} 6 & 10 \\\\ 8 & 12 \\end{pmatrix}$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)