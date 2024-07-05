#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Matrixmultiplikation]
  #v(40pt)

  #only("1-")[
    Multipliziere die folgenden Matrizen:
    #v(20pt)
    $A = mat(1, 2; 3, 4; 5, 6)$ und $B = mat(7, 8; 9, 10)$
  ]

  #only("1")[
    #voiceover("Lass uns die Matrixmultiplikation mit nicht-quadratischen Matrizen üben. Multipliziere Matrix A, die eine 3 mal 2 Matrix ist, mit Matrix B, die eine 2 mal 2 Matrix ist.")
  ]

  #v(20pt)

  #only("2-")[
    📏 Dimensionen:
    - Matrix A: 3 × 2
    - Matrix B: 2 × 2
  ]

  #only("2")[
    #voiceover("Bevor wir beginnen, lass uns die Dimensionen unserer Matrizen identifizieren. Matrix A ist eine 3 mal 2 Matrix, während Matrix B eine 2 mal 2 Matrix ist.")
  ]

  #only("3-")[
    ❓ Ist die Multiplikation möglich?
  ]

  #only("3")[
    #voiceover("Nun, frage Dich: Ist diese Multiplikation möglich? Denke an die Regel für die Kompatibilität der Matrixmultiplikation.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \\\\ 5 & 6 \end{bmatrix}$ und $\begin{bmatrix} 7 & 8 \\\\ 9 & 10 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 25 & 28 \\\\ 57 & 64 \\\\ 89 & 100 \end{bmatrix}$", "$\begin{bmatrix} -46 & -52 \\\\ -110 & -124 \\\\ -174 & -196 \end{bmatrix}$"), 
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