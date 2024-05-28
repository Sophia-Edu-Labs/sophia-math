#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildung]
// Der Titel "Lineare Abbildung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[
$T(x, y) = (2x, 3y)$
]
// Die lineare Abbildung T wird ab Folie 1 angezeigt
#only("1")[
#voiceover("Betrachte die lineare Abbildung T, die den Vektor (x, y) auf (2x, 3y) abbildet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Neue Basis]
// Der Titel "Neue Basis" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[
$B = (mat(1; 1), mat(1; -1))$
]
// Die neue Basis B wird ab Folie 1 angezeigt
#only("1")[
#voiceover("Wir möchten die Matrixdarstellung von T bezüglich der neuen Basis B finden, die aus den Vektoren (1; 1) und (1; -1) besteht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
// Der Titel "Frage" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[
Finde die Matrix $[T]_B$, die $T$ bezüglich $B$ darstellt.
]
// Die Frage wird ab Folie 1 gestellt
#only("1")[
#voiceover("Deine Aufgabe ist es, die Matrix [T]_B zu finden, die die lineare Abbildung T bezüglich der Basis B darstellt.")
]
]#questionDef(
questionText: "Was ist die Matrix $[T]_B$, die $T$ bezüglich $B$ darstellt?",
answerOptions: ("$\\begin{pmatrix} 2.5 & 0.5 \\\\ 0.5 & 1.5 \\end{pmatrix}$", "$\\begin{pmatrix} 2 & 0 \\\\ 0 & 3 \\end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\begin{pmatrix} \\key{a} & \\key{b} \\\\ \\key{c} & \\key{d} \\end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number",
"c": "number",
"d": "number"
)
),
)