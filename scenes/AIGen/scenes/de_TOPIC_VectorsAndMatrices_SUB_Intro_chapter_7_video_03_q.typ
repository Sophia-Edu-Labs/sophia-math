#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir eine Matrix und bestimmen ihre Dimensionen.")
  ]
  #text(size: 30pt, weight: "bold")[Matrixdimensionen]
  #v(40pt)

  #only("2-")[
    Betrachte die Matrix:
    #v(10pt)
    $ mat(7, 8; 9, 10; 11, 12) $
  ]

  #only("2")[
    #voiceover("Betrachte die gegebene Matrix. Was sind ihre Dimensionen?")
  ]

  #only("3-")[
    #v(20pt)
    Bestimme die Dimensionen dieser Matrix.
  ]

  #only(3)[
    #voiceover("Bestimme die Dimensionen dieser Matrix.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Bestimme die Dimensionen der Matrix $\begin{bmatrix} 7 & 8 \\\\ 9 & 10 \\\\ 11 & 12 \end{bmatrix}$.", 
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