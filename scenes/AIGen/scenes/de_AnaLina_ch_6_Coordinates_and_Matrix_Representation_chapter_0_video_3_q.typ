#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten]
#v(40pt)
#only("1-")[
Gegeben sei ein Vektor $v$ in $RR^2$:
]
#v(20pt)
#only("2-")[
$v = mat(3; 4)$
]
#v(40pt)
#only("3-")[
Was sind die Koordinaten von $v$? 🤔
]

#only("1")[
#voiceover("Betrachten wir einen Vektor v in R 2.")
]
#only("2")[
#voiceover("Genauer gesagt, sei v der Vektor mit den Komponenten 3 und 4.")
]
#only("3")[
#voiceover("Kannst du die Koordinaten dieses Vektors v bestimmen?")
]
]#questionDef(
questionText: "Was sind die Koordinaten des Vektors $v = \begin{pmatrix} 3 \\\\ 4 \end{pmatrix}$ in $\mathbb{R}^2$?",
answerOptions: ("(3, 4)", "(4, 3)", "(1, 2)", "(0, 0)"),
correctAnswerIndex: 0
)