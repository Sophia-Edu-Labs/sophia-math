#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Darstellung]
#v(40pt)
#only("1-")[Gegeben die lineare Abbildung:]
#v(20pt)
#only("2-")[$T: RR^2 -> RR^2$]
#v(20pt)
#only("3-")[$T(x, y) = (2x, 3y)$]
#v(40pt)
#only("4-")[Was ist die Matrix-Darstellung von $T$? 🤔]

#only("1")[
#voiceover("Betrachten Sie das folgende Problem:")
]
#only("2")[
#voiceover("Wir haben eine lineare Abbildung T von R² nach R²,")
]
#only("3")[
#voiceover("definiert durch T von x, y gleich 2x, 3y.")
]
#only("4")[
#voiceover("Ihre Aufgabe ist es, die Matrix-Darstellung von T zu finden.")
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Was ist die Matrix-Darstellung von $T$?",
// use latex instead of typst. First Provide the correct Answer, then one simple incorrect answer of your choice.
answerOptions: ("$\begin{pmatrix} 2 & 0 \\\\ 0 & 3 \end{pmatrix}$", "$\begin{pmatrix} 0 & 0 \\\\ 0 & 0 \end{pmatrix}$"),
//0, because the first answer is the correct one.
correctAnswerIndex: 0,
freeTextDetail: (
  //1, because the generic incorrect answer comes after the first and has index 1.
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