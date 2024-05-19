#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Matrix Multiplication]

#v(40pt)

#only("1-")[- Given matrices: $mat(1, 2; 3, 4)$ and $mat(5; 6)$]

#v(40pt)

#only("2-")[Multiply the matrices 🧮]

#only("1")[
#voiceover("Consider the matrices mat 1, 2; 3, 4 and mat 5; 6.")
]

#only("2")[
#voiceover("Multiply these two matrices.")
]

]#questionDef(
questionText: "What is the result of multiplying $mat(1, 2; 3, 4)$ by $mat(5; 6)$?",
answerOptions: ("The result is $mat(17; 39)$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)