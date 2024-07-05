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
  ]

  #v(20pt)

  #only("2-")[
    $A = mat(2, 1; 0, 3)$ und $B = mat(1, 4; 5, 2)$
  ]

  #v(20pt)

  #only("1")[
    #voiceover("Lass uns die Matrixmultiplikation mit einem numerischen Beispiel üben.")
  ]

  #only("2")[
    #voiceover("Wir müssen die Matrix A, eine 2x2-Matrix mit den Elementen 2, 1 in der ersten Zeile und 0, 3 in der zweiten Zeile, mit der Matrix B multiplizieren, einer weiteren 2x2-Matrix mit den Elementen 1, 4 in der ersten Zeile und 5, 2 in der zweiten Zeile.")
  ]

  #only("3")[
    #voiceover("Berechne das Produkt A B.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix} 2 & 1 \\\\ 0 & 3 \end{bmatrix}$ und $\begin{bmatrix} 1 & 4 \\\\ 5 & 2 \end{bmatrix}$. Was ist die resultierende Matrix?", 
answerOptions: ("$\begin{bmatrix} 7 & 10 \\\\ 15 & 6 \end{bmatrix}$", "$\begin{bmatrix} -10 & -16 \\\\ -26 & -8 \end{bmatrix}$"), 
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
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)