#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)

  #only("1-")[
    Löse die quadratische Gleichung:
    #v(20pt)
    $ x^2 - 5x + 6 = 0 $
  ]
  #v(20pt)
  #only("2-")[
    durch Faktorisierung 📊
  ]

  #only("1")[
    #voiceover("Lass uns das Lösen quadratischer Gleichungen üben. Hier ist unser Problem:")
  ]
  #only("2")[
    #voiceover("Wir müssen die quadratische Gleichung x Quadrat minus 5x plus 6 gleich 0 durch Faktorisierung lösen. Kannst du die Lösung herausfinden?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 5x + 6 = 0$ durch Faktorisierung.", 
answerOptions: ("$\begin{pmatrix} x_1 & x_2 \end{pmatrix} = \begin{pmatrix} 2 & 3 \end{pmatrix}$", "$\begin{pmatrix} x_1 & x_2 \end{pmatrix} = \begin{pmatrix} 0 & -2 \end{pmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{pmatrix} x_1 & x_2 \end{pmatrix} = \begin{pmatrix} \key{a} & \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)