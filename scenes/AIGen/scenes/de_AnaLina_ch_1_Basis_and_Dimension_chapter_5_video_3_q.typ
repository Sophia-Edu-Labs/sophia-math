#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Koordinaten bezüglich einer Basis]

#v(40pt)

#only("1-")[Gegeben:
- Vektor $mat(3; 4)$
- Basis $mat(1; 0), mat(0; 1)$]

#v(40pt)

#only("2-")[Finde die Koordinaten von $mat(3; 4)$ bezüglich der Basis $mat(1; 0), mat(0; 1)$. 🤔]

#only("1")[
#voiceover("Betrachte den Vektor 3, 4 und die Basisvektoren 1, 0 und 0, 1.")
]

#only("2")[
#voiceover("Finde die Koordinaten des Vektors 3, 4 bezüglich dieser Basis.")
]

]#questionDef(
questionText: "Was sind die Koordinaten des Vektors $\\begin{pmatrix}3 \\\\ 4\\end{pmatrix}$ bezüglich der Basis $\\begin{pmatrix}1 \\\\ 0\\end{pmatrix}, \\begin{pmatrix}0 \\\\ 1\\end{pmatrix}$?",
answerOptions: ("Die Koordinaten sind $(3, 4)$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)