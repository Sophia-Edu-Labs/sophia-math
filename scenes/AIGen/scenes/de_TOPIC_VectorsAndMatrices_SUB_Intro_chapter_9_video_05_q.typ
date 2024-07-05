#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns eine Matrix betrachten und ihre Dimensionen bestimmen.")
  ]
  #text(size: 30pt, weight: "bold")[Matrixdimensionen]
  #v(40pt)

  #only("2-")[
    Betrachte die Matrix:
    #v(20pt)
    $ mat(
      1, 0;
      0, 1;
      1, 1
    ) $
  ]

  #only("2")[
    #voiceover("Gegeben diese Matrix, was sind ihre Dimensionen?")
  ]

  #only("3-")[
    #v(20pt)
    Finde die Dimensionen dieser Matrix. 🔢
  ]

  #only("3")[
    #voiceover("Bestimme die Anzahl der Zeilen und Spalten in dieser Matrix, um ihre Dimensionen zu finden.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Dimensionen der Matrix $\begin{bmatrix} 1 & 0 \\\\ 0 & 1 \\\\ 1 & 1 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 2 \end{bmatrix}$", "$\begin{bmatrix} -2 & 0 \end{bmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)