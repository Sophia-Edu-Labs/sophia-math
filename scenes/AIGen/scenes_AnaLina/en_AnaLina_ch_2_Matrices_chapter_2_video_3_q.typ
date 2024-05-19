#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition]
#v(40pt)
#only("1-")[Consider the matrices:]
#v(20pt)
#only("2-")[- $A = mat(1, 2; 3, 4)$]
#v(20pt)
#only("3-")[- $B = mat(5, 6; 7, 8)$]
#only("1")[
#voiceover("Let's consider matrix addition.")
]
#only("2")[
#voiceover("We have matrix A equals the 2 by 2 matrix with elements 1, 2, 3, and 4.")
]
#only("3")[
#voiceover("And matrix B equals the 2 by 2 matrix with elements 5, 6, 7, and 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition]
#v(40pt)
#only("1-")[What is the result of $A + B$? 🤔]
#only("1")[
#voiceover("What is the result of adding matrix A and matrix B?")
]
]#questionDef(
questionText: "What is the result of adding the matrices $A = mat(1, 2; 3, 4)$ and $B = mat(5, 6; 7, 8)$?",
answerOptions: ("The result is $mat(6, 8; 10, 12)$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)