#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixdimensionen]
  #v(40pt)

  #only("1-")[
    Betrachte die Matrix:
    #v(10pt)
    $ A = mat(1, 2, 3, 4) $
  ]

  #v(20pt)

  #only("2-")[
    Was sind die Dimensionen dieser Matrix?
  ]

  #only("1")[
    #voiceover("Lass uns eine Matrixfrage betrachten.")
  ]

  #only("2")[
    #voiceover("Was sind die Dimensionen der Matrix A, wobei A gleich 1, 2, 3, 4 ist?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was sind die Dimensionen der Matrix $[[1, 2, 3, 4]]$?", 
answerOptions: ("$\begin{pmatrix} 1 & 4 \end{pmatrix}$", "$\begin{pmatrix} 2 & -4 \end{pmatrix}$"), 
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
answerOptionMatcher:("$\begin{pmatrix} \key{a} & \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)