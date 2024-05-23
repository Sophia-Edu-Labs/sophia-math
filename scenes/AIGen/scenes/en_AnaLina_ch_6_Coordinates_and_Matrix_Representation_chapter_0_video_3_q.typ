#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Coordinates]
#v(40pt)
#only("1-")[
Given a vector $v$ in $RR^2$:
]
#v(20pt)
#only("2-")[
$v = mat(3; 4)$
]
#v(40pt)
#only("3-")[
What are the coordinates of $v$? 🤔
]

#only("1")[
#voiceover("Let's consider a vector v in R 2.")
]
#only("2")[
#voiceover("Specifically, let v be the vector with components 3 and 4.")
]
#only("3")[
#voiceover("Can you determine the coordinates of this vector v?")
]
]#questionDef(
questionText: "What are the coordinates of the vector $v = \begin{pmatrix} 3 \\\\ 4 \end{pmatrix}$ in $\mathbb{R}^2$?",
answerOptions: ("(3, 4)", "(4, 3)", "(1, 2)", "(0, 0)"),
correctAnswerIndex: 0
)