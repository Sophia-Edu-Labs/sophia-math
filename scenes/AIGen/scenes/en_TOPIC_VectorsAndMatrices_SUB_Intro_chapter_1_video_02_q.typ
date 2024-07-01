#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Scalar Multiplication]
    #v(40pt)
  ]

  #only("2-")[
    Calculate:
    #v(20pt)
    $ 4 dot (2, 3) $
  ]

  #only("1")[
    #voiceover("Let's practice scalar multiplication of vectors.")
  ]

  #only("2")[
    #voiceover("Calculate the result of multiplying the vector two, three by the scalar four.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the result of multiplying vector $(2, 3)$ by scalar $4$.", 
answerOptions: ("$\begin{pmatrix} 8 \\\\ 12 \end{pmatrix}$", "$\begin{pmatrix} -12 \\\\ -20 \end{pmatrix}$"), 
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
answerOptionMatcher:("$\begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)