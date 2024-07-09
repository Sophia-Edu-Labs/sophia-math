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
    Consider the quadratic equation:
    #v(10pt)
    $ x^2 + 5x + 6 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    Solve using the p-q formula 🧮
  ]

  #only("1")[
    #voiceover("Let's practice solving quadratic equations using the p-q formula.")
  ]

  #only("2")[
    #voiceover("Consider the quadratic equation x squared plus 5x plus 6 equals zero. Can you solve this equation using the p-q formula?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 + 5x + 6 = 0$ using the p-q formula.", 
answerOptions: ("$\begin{pmatrix} x_1 \\\\ x_2 \end{pmatrix} = \begin{pmatrix} -2 \\\\ -3 \end{pmatrix}$", "$\begin{pmatrix} x_1 \\\\ x_2 \end{pmatrix} = \begin{pmatrix} 8 \\\\ 10 \end{pmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$\begin{pmatrix} x_1 \\\\ x_2 \end{pmatrix} = \begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)