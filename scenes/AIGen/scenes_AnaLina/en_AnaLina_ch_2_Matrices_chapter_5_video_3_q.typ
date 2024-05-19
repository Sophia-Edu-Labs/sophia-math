#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication Exercise]
#v(40pt)
#only("1-")[Given the matrices:]
#v(20pt)
#only("2-")[$ A = mat(2, 0; 1, 3) $]
#v(10pt)
#only("3-")[$ B = mat(4, 1; 2, 2) $]
#v(40pt)
#only("4-")[What is the result of multiplying $A$ by $B$? 🤔]
#only("1")[
#voiceover("Let's practice matrix multiplication with an exercise.")
]
#only("2")[
#voiceover("We have matrix A equals the 2 by 2 matrix with elements 2, 0, 1, and 3.")
]
#only("3")[
#voiceover("And matrix B equals the 2 by 2 matrix with elements 4, 1, 2, and 2.")
]
#only("4")[
#voiceover("Your task is to multiply matrix A by matrix B. What is the resulting matrix?")
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the result of multiplying the matrices $A = mat(2, 0; 1, 3)$ and $B = mat(4, 1; 2, 2)$?",
answerOptions: ("The result is $mat(8, 2; 10, 7)$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)