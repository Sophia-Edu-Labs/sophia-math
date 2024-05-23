#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Given $T: R^2 -> R^2$ defined by $T(mat(x; y)) = mat(x + y; x - y)$,]
#v(20pt)
#only("2-")[find the image of $T$.]

#only("1")[
#voiceover("Given a linear mapping T from R2 to R2 defined by T of the vector x, y equals the vector x plus y, x minus y,")
]

#only("2")[
#voiceover("find the image of T.")
]
]#questionDef(
questionText: "Given $T: \mathbb{R}^2 \\rightarrow \mathbb{R}^2$ defined by $T\left(\begin{pmatrix} x \\\\ y \end{pmatrix}\\right) = \begin{pmatrix} x + y \\\\ x - y \end{pmatrix}$, find the image of $T$.",
answerOptions: ("The image is the set of all vectors $\begin{pmatrix} a \\\\ b \end{pmatrix}$ such that $a + b = 0$, i.e., $\text{im}(T) = \left\{\begin{pmatrix} a \\\\ b \end{pmatrix} \mid a + b = 0\\right\}$.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)