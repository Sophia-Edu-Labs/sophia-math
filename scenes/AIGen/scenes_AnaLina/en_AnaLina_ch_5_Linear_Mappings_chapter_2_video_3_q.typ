#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)

#only("1-")[Given $T: RR^2 -> RR^2$ defined by $T(mat(x; y)) = mat(x + y; x - y)$]
#v(20pt)
#only("2-")[Find the kernel of $T$.]
#only("1")[
#voiceover("Consider the linear mapping T from R 2 to R 2 defined by T of the vector x, y equals the vector x plus y, x minus y.")
]
#only("2")[
#voiceover("Find the kernel of T.")
]
]#questionDef(
questionText: "What is the kernel of the linear mapping $T: \mathbb{R}^2 \\to \mathbb{R}^2$ defined by $T\begin{pmatrix} x \\\\ y \end{pmatrix} = \begin{pmatrix} x + y \\\\ x - y \end{pmatrix}$?",
answerOptions: ("The kernel is the set of vectors $\begin{pmatrix} x \\\\ -x \end{pmatrix}$, i.e., $\ker(T) = \left\{\begin{pmatrix} x \\\\ -x \end{pmatrix} \mid x \in \mathbb{R}\right\}$.", "The answer is incorrect."),  
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)