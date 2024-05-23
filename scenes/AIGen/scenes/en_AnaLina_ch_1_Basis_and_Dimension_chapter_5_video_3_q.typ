#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Coordinates with Respect to a Basis]

#v(40pt)

#only("1-")[Given:
- Vector $mat(3; 4)$
- Basis $mat(1; 0), mat(0; 1)$]

#v(40pt)

#only("2-")[Find the coordinates of $mat(3; 4)$ with respect to the basis $mat(1; 0), mat(0; 1)$. 🤔]

#only("1")[
#voiceover("Consider the vector 3, 4 and the basis vectors 1, 0 and 0, 1.")
]

#only("2")[
#voiceover("Find the coordinates of the vector 3, 4 with respect to this basis.")
]

]#questionDef(
questionText: "What are the coordinates of the vector $\\begin{pmatrix}3 \\\\ 4\\end{pmatrix}$ with respect to the basis $\\begin{pmatrix}1 \\\\ 0\\end{pmatrix}, \\begin{pmatrix}0 \\\\ 1\\end{pmatrix}$?",
answerOptions: ("The coordinates are $(3, 4)$.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)