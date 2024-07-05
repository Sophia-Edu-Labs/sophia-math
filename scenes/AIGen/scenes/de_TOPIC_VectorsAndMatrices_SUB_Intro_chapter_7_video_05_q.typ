#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Matrix-Dimensionen]
    #v(40pt)
  ]

  #only("2-")[
    Betrachte die Matrix:
    #v(20pt)
    $ mat(3, 3, 3;
          4, 4, 4) $
  ]

  #v(20pt)

  #only("3-")[
    Bestimme die Dimensionen dieser Matrix.
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Dimensionen einer Matrix zu bestimmen.")
  ]

  #only("2")[
    #voiceover("Betrachte die folgende Matrix.")
  ]

  #only("3")[
    #voiceover("Was sind die Dimensionen dieser Matrix?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Bestimme die Dimensionen der Matrix $\begin{bmatrix} 3 & 3 & 3 \\\\ 4 & 4 & 4 \end{bmatrix}$.", 
answerOptions: ("Die Dimensionen der Matrix sind $2 \\times 3$.", "Die Dimensionen der Matrix sind $0 \\times -2$."), 
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
answerOptionMatcher:("Die Dimensionen der Matrix sind $\key{a} \\times \key{b}$."), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)