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
    $ x^2 + 6x + 9 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    Using the p-q formula
  ]

  #only("1")[
    #voiceover("Let's practice solving quadratic equations using the p-q formula. Here's our problem:")
  ]

  #only("2")[
    #voiceover("Solve the quadratic equation x squared plus 6x plus 9 equals 0 using the p-q formula.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 + 6x + 9 = 0$ using the p-q formula.", 
answerOptions: ("$\begin{pmatrix} -3 \end{pmatrix}$", "$\begin{pmatrix} 10 \end{pmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$\begin{pmatrix} \key{a} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)