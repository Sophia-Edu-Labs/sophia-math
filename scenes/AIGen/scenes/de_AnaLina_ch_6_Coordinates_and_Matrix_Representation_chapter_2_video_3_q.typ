#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixdarstellung]
#v(40pt)
#only("1-")[Gegeben ist die lineare Abbildung:]
#v(20pt)
#only("2-")[$T: RR^2 -> RR^2$]
#v(20pt)
#only("3-")[$T(x, y) = (2x, 3y)$]
#v(40pt)
#only("4-")[Was ist die Matrixdarstellung von $T$? 🤔]

#only("1")[
#voiceover("Betrachte das folgende Problem:")
]
#only("2")[
#voiceover("Wir haben eine lineare Abbildung T von R² nach R²,")
]
#only("3")[
#voiceover("definiert durch T von x, y gleich 2x, 3y.")
]
#only("4")[
#voiceover("Deine Aufgabe ist es, die Matrixdarstellung von T zu finden.")
]
]#questionDef(
questionText: "Was ist die Matrixdarstellung von $T$?",
answerOptions: ("$\begin{pmatrix} 2 & 0 \\\\ 0 & 3 \end{pmatrix}$", "$\begin{pmatrix} 2 & 3 \\\\ 0 & 0 \end{pmatrix}$", "$\begin{pmatrix} 1 & 0 \\\\ 0 & 1 \end{pmatrix}$", "$\begin{pmatrix} 0 & 2 \\\\ 3 & 0 \end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\begin{pmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number",
"c": "number",
"d": "number"
)
),
)