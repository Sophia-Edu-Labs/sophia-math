#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#only("1")[
#voiceover("Lass uns die skalare Multiplikation von Matrizen mit einer numerischen Übung üben.")
]

#text(size: 30pt, weight: "bold")[Skalare Matrixmultiplikation]
#v(40pt)

#only("2-")[
Multipliziere die Matrix mit dem Skalar:

#v(10pt)

$5 dot mat(1, 0; 0, 1)$
]

#only("2")[
#voiceover("Multipliziere die gegebene 2 mal 2 Einheitsmatrix mit dem Skalar 5. Denke daran, dass wir bei der skalaren Matrixmultiplikation jedes Element der Matrix mit dem Skalar multiplizieren.")
]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrix $\begin{bmatrix} 1 & 0 \\\\ 0 & 1 \end{bmatrix}$ mit dem Skalar $5$.", 
answerOptions: ("$\begin{bmatrix} 5 & 0 \\\\ 0 & 5 \end{bmatrix}$", "$\begin{bmatrix} -6 & 4 \\\\ 4 & -6 \end{bmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
c: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
d: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)