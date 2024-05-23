#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildungsübung]
#v(40pt)
#only("1-")[
Betrachten Sie die lineare Abbildung:
#v(20pt)
$T: R^2 -> R^2$
#v(10pt)  
$T(mat(x; y)) = mat(x + y; x - y)$
]
#only("1")[
#voiceover("Betrachten Sie die folgende lineare Abbildung T von R 2 nach R 2, wobei T des Vektors x, y als der Vektor x plus y, x minus y definiert ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage 🤔]
#v(40pt)
#only("1-")[
Finden Sie:
#v(20pt)
$T(mat(3; 4))$
]
#only("1")[
#voiceover("Ihre Aufgabe ist es, T des Vektors 3, 4 zu finden. Das heißt, welchen Vektor erhalten Sie, wenn Sie die lineare Abbildung T auf den Vektor 3, 4 anwenden?")
]
]#questionDef(
questionText: "Was ist $T\left(\begin{pmatrix}3 \\\\ 4\end{pmatrix}\right)$?",
answerOptions: ("$\begin{pmatrix}7 \\\\ -1\end{pmatrix}$", "$\begin{pmatrix}12 \\\\ 12\end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\begin{pmatrix}\key{a} \\\\ \key{b}\end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)