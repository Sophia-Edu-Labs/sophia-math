#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
#v(40pt)
#only("1-")[Consider the vectors:]
#v(20pt)
#only("2-")[- $mat(1; 2)$]
#v(10pt)
#only("3-")[- $mat(3; 4)$]
#only("1")[
#voiceover("Consider the following vectors:")
]
#only("2")[
#voiceover("The vector with components 1 and 2,")
]
#only("3")[
#voiceover("and the vector with components 3 and 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[Are these vectors linearly independent? 🤔]
#v(20pt)
#only("2-")[To find out, row reduce the matrix:]
#v(20pt)
#only("3-")[
$mat(1, 3; 2, 4)$
]
#only("1")[
#voiceover("Are these vectors linearly independent?")
]
#only("2")[
#voiceover("To find out, row reduce the matrix")
]
#only("3")[
#voiceover("1, 3; 2, 4, where the vectors are the columns of the matrix.")
]
]#questionDef(
questionText: "Are the vectors $\\begin{pmatrix} 1 \\\\ 2 \\end{pmatrix}$ and $\\begin{pmatrix} 3 \\\\ 4 \\end{pmatrix}$ linearly independent? Row reduce the matrix $\\begin{pmatrix} 1 & 3 \\\\ 2 & 4 \\end{pmatrix}$ to find out.",
answerOptions: ("Yes, the vectors are linearly independent because the row reduced matrix has a pivot in each column.", "No, the answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)