#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#only("1-")[
#text(size: 30pt, weight: "bold")[Übung zur linearen Abbildung]
// Der Titel "Übung zur linearen Abbildung" wird auf dieser Folie angezeigt
#v(40pt)
]

#only("2-")[
Gegeben sei eine lineare Abbildung $T: R^2 -> R^2$ definiert durch:
#v(20pt)
$T(mat(x; y)) = mat(2x; 3y)$
// Die gegebene lineare Abbildung wird ab Folie 2 angezeigt
]

#only("3-")[
#v(40pt)
Finde:
#v(20pt)
$T(mat(1; 2)) = ?$
// Die Frage, T(mat(1; 2)) zu finden, wird ab Folie 3 angezeigt
]

#only("1")[
#voiceover("Lass uns eine Übung zur linearen Abbildung machen!")
]

#only("2")[
#voiceover("Gegeben sei eine lineare Abbildung T von R2 nach R2 definiert durch T des Vektors x, y gleich dem Vektor 2x, 3y.")
]

#only("3")[
#voiceover("Finde T des Vektors 1, 2.")
]
]#questionDef(
questionText: "Was ist $T(\begin{pmatrix} 1 \\\\ 2 \end{pmatrix})$?",
answerOptions: ("$\begin{pmatrix} 2 \\\\ 6 \end{pmatrix}$", "$\begin{pmatrix} 3 \\\\ 5 \end{pmatrix}$", "$\begin{pmatrix} 1 \\\\ 2 \end{pmatrix}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 2,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)