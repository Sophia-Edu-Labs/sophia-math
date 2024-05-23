#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's consider the following exercise.")
]
#text(size: 30pt, weight: "bold")[Change of Basis]
#v(40pt)
#only("2-")[
- Given vector: $mat(3; 4)$
- New basis: $mat(1; 1), mat(1; -1)$
]
#only("3-")[
Find the coordinates of the vector with respect to the new basis. 🎯
]
#only("2")[
#voiceover("We are given a vector (3; 4) and a new basis consisting of the vectors (1; 1) and (1; -1).")
]
#only("3")[
#voiceover("The task is to find the coordinates of the given vector with respect to this new basis.")
]
]#questionDef(
questionText: "Given the vector $\mathbf{v} = \begin{pmatrix} 3 \\\\ 4 \end{pmatrix}$ and the new basis $\begin{pmatrix} 1 \\\\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\\\ -1 \end{pmatrix}$, what are the coordinates of the vector with respect to the new basis?",
answerOptions: ("The coordinates are $\left( \frac{7}{2}, -\frac{1}{2} \right)$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)