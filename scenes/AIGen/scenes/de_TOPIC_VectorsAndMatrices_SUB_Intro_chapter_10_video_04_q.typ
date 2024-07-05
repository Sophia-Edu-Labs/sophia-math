#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Addition]
  #v(40pt)

  #only("1-")[
    Addiere die folgenden Matrizen:
    #v(20pt)
    $A = mat(2, 1; 0, -1; 3, 2)$ und $B = mat(1, -1; 4, 0; -2, 5)$
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Addition von Matrizen üben. Betrachte die folgenden zwei Matrizen: Matrix A, die eine 3 mal 2 Matrix ist mit den Elementen 2, 1 in der ersten Zeile, 0, minus 1 in der zweiten Zeile und 3, 2 in der dritten Zeile. Und Matrix B, ebenfalls eine 3 mal 2 Matrix, mit den Elementen 1, minus 1 in der ersten Zeile, 4, 0 in der zweiten Zeile und minus 2, 5 in der dritten Zeile. Deine Aufgabe ist es, diese Matrizen zu addieren.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Addiere die Matrizen $\begin{bmatrix} 2 & 1 \\\\ 0 & -1 \\\\ 3 & 2 \end{bmatrix}$ und $\begin{bmatrix} 1 & -1 \\\\ 4 & 0 \\\\ -2 & 5 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 0 \\\\ 4 & -1 \\\\ 1 & 7 \end{bmatrix}$", "$\begin{bmatrix} -2 & 4 \\\\ -4 & 6 \\\\ 2 & -10 \end{bmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
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
e: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
f: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \\\\ \key{e} & \key{f} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
"e": "number",
"f": "number",
) 
), 
)