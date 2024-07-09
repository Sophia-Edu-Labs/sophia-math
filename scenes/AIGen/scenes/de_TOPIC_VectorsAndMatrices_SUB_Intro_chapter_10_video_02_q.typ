#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Dimensionen]
  #v(40pt)

  #only("1-")[
    Betrachte die folgende Matrix:
    #v(10pt)
    $ mat(3, 6, 9;
          2, 4, 8;
          1, 5, 7) $
  ]

  #v(20pt)

  #only("2-")[
    Bestimme die Dimensionen dieser Matrix.
  ]

  #only("1")[
    #voiceover("Betrachten wir ein Matrixproblem. Hier ist eine 3 mal 3 Matrix.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Dimensionen dieser Matrix zu bestimmen. Denke daran, die Dimensionen einer Matrix werden als die Anzahl der Zeilen mal die Anzahl der Spalten angegeben.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Bestimme die Dimensionen der Matrix $\begin{bmatrix} 3 & 6 & 9 \\\\ 2 & 4 & 8 \\\\ 1 & 5 & 7 \end{bmatrix}$.", 
answerOptions: ("$\\text{Zeilen} = 3, \\text{Spalten} = 3$", "$\\text{Zeilen} = -2, \\text{Spalten} = -2$"), 
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
answerOptionMatcher:("$\\text{Zeilen} = \key{a}, \\text{Spalten} = \key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)