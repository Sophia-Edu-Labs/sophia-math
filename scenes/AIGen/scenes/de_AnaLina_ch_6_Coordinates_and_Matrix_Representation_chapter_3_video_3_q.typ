#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Vektor-Multiplikation]
#v(40pt)

#only("1-")[
Gegeben:
- Matrix $A = mat(2, 0; 0, 3)$
- Vektor $v = mat(1; 2)$
]
// Die gegebene Matrix A und der Vektor v werden ab Folie 1 angezeigt

#v(20pt)

#only("2-")[
Finde das Bild von $v$ unter der linearen Abbildung, die durch $A$ dargestellt wird.
]
// Die Frage, das Bild von v zu finden, wird ab Folie 2 angezeigt

#only("1")[
#voiceover("Betrachten Sie die Matrix A, die der 2x2-Matrix mit den Elementen 2, 0, 0 und 3 entspricht, und den Vektor v, der dem Spaltenvektor mit den Elementen 1 und 2 entspricht.")
]

#only("2")[
#voiceover("Finden Sie das Bild des Vektors v unter der linearen Abbildung, die durch die Matrix A dargestellt wird.")
]

]#questionDef(
questionText: "Was ist das Bild von $v$ unter der linearen Abbildung, die durch $A$ dargestellt wird?",
answerOptions: ("$\begin{pmatrix} 2 \\\\ 6 \end{pmatrix}$", "$\begin{pmatrix} 5 \\\\ 2 \end{pmatrix}$", "$\begin{pmatrix} 2 \\\\ 0 \end{pmatrix}$", "$\begin{pmatrix} 0 \\\\ 6 \end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\begin{pmatrix} a \\\\ b \end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)