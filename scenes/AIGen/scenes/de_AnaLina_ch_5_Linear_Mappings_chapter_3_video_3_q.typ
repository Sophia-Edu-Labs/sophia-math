#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Gegeben sei $T: R^2 -> R^2$, definiert durch $T(mat(x; y)) = mat(x + y; x - y)$,]
#v(20pt)
#only("2-")[finden Sie das Bild von $T$.]

#only("1")[
#voiceover("Gegeben ist eine lineare Abbildung T von R2 nach R2, definiert durch T des Vektors x, y gleich dem Vektor x plus y, x minus y,")
]

#only("2")[
#voiceover("finden Sie das Bild von T.")
]
]#questionDef(
questionText: "Gegeben sei $T: \mathbb{R}^2 \\rightarrow \mathbb{R}^2$, definiert durch $T\left(\begin{pmatrix} x \\\\ y \end{pmatrix}\\right) = \begin{pmatrix} x + y \\\\ x - y \end{pmatrix}$, finden Sie das Bild von $T$.",
answerOptions: ("Das Bild ist die Menge aller Vektoren $\begin{pmatrix} a \\\\ b \end{pmatrix}$, sodass $a + b = 0$, d.h., $\text{im}(T) = \left\{\begin{pmatrix} a \\\\ b \end{pmatrix} \mid a + b = 0\\right\}$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)