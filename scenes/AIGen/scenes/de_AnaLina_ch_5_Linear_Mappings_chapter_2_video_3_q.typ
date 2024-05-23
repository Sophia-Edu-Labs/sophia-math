#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)

#only("1-")[Gegeben sei $T: RR^2 -> RR^2$ definiert durch $T(mat(x; y)) = mat(x + y; x - y)$]
#v(20pt)
#only("2-")[Finde den Kern von $T$.]
#only("1")[
#voiceover("Betrachten Sie die lineare Abbildung T von R 2 nach R 2, definiert durch T des Vektors x, y gleich dem Vektor x plus y, x minus y.")
]
#only("2")[
#voiceover("Finden Sie den Kern von T.")
]
]#questionDef(
questionText: "Was ist der Kern der linearen Abbildung $T: \mathbb{R}^2 \\to \mathbb{R}^2$, definiert durch $T\begin{pmatrix} x \\\\ y \end{pmatrix} = \begin{pmatrix} x + y \\\\ x - y \end{pmatrix}$?",
answerOptions: ("Der Kern ist die Menge der Vektoren $\begin{pmatrix} x \\\\ -x \end{pmatrix}$, d.h. $\ker(T) = \left\{\begin{pmatrix} x \\\\ -x \end{pmatrix} \mid x \in \mathbb{R}\right\}$.", "Die Antwort ist falsch."),  
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)