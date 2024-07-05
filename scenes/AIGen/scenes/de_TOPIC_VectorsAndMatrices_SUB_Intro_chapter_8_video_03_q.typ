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
    Multipliziere die Matrizen:
    #v(20pt)
    $A = mat(2, 0; 1, 3; 4, 5)$ und $B = mat(3, 1; 2, 4)$
  ]

  #only("1")[
    #voiceover("Lass uns die Matrixmultiplikation mit nicht-quadratischen Matrizen üben. Betrachte folgendes Problem: Multipliziere die Matrizen A und B, wobei A eine 3 mal 2 Matrix und B eine 2 mal 2 Matrix ist. Matrix A ist gegeben als 2, 0 in der ersten Zeile; 1, 3 in der zweiten Zeile; und 4, 5 in der dritten Zeile. Matrix B ist gegeben als 3, 1 in der ersten Zeile und 2, 4 in der zweiten Zeile.")
  ]

  #only("2")[
    #voiceover("Berechne das Produkt AB. Denke daran zu überprüfen, ob die Matrizen kompatibel für die Multiplikation sind, und folge den Regeln für die Matrixmultiplikation.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix} 2 & 0 \\\\ 1 & 3 \\\\ 4 & 5 \end{bmatrix}$ und $\begin{bmatrix} 3 & 1 \\\\ 2 & 4 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 6 & 2 \\\\ 9 & 13 \\\\ 22 & 24 \end{bmatrix}$", "$\begin{bmatrix} -8 & 0 \\\\ -14 & -22 \\\\ -40 & -44 \end{bmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
c: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
d: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
e: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
f: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
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