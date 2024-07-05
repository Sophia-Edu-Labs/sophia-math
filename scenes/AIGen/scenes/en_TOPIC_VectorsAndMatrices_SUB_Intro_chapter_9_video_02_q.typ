#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vector Addition]
  #v(40pt)

  #only("1-")[
    Find the sum of vectors:
    #v(20pt)
    $vec(a) = (5, 7)$ and $vec(b) = (2, -3)$
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice vector addition. Find the sum of the vectors a, which equals five comma seven, and b, which equals two comma negative three.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the sum of vectors $(5, 7)$ and $(2, -3)$. What is the resulting vector?", 
answerOptions: ("$\begin{pmatrix} 7 \\\\ 4 \end{pmatrix}$", "$\begin{pmatrix} -10 \\\\ -4 \end{pmatrix}$"), 
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