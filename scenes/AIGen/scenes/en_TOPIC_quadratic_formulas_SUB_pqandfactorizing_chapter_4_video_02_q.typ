#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)

  #only("1-")[
    Solve the quadratic equation:
    #v(20pt)
    $ x^2 - 5x + 6 = 0 $
  ]
  #v(20pt)
  #only("2-")[
    by factorizing 📊
  ]

  #only("1")[
    #voiceover("Let's practice solving quadratic equations. Here's our problem:")
  ]
  #only("2")[
    #voiceover("We need to solve the quadratic equation x squared minus 5x plus 6 equals 0 by factorizing. Can you figure out the solution?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 - 5x + 6 = 0$ by factorizing.", 
answerOptions: ("$\begin{pmatrix} x_1 & x_2 \end{pmatrix} = \begin{pmatrix} 2 & 3 \end{pmatrix}$", "$\begin{pmatrix} x_1 & x_2 \end{pmatrix} = \begin{pmatrix} 0 & -2 \end{pmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
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