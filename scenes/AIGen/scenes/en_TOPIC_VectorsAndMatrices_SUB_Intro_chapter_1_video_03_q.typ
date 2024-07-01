#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice scalar multiplication of vectors with a numeric exercise.")
  ]
  #text(size: 30pt, weight: "bold")[Scalar Multiplication]
  #v(40pt)
  #only("2-")[
    Calculate: $-3 dot (1, -2)$
  ]
  #only("2")[
    #voiceover("Calculate the result of multiplying the vector one, negative two by the scalar negative three.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the vector $(1, -2)$ by the scalar $-3$.", 
answerOptions: ("$\begin{pmatrix} -3 \\\\ 6 \end{pmatrix}$", "$\begin{pmatrix} 10 \\\\ -8 \end{pmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)