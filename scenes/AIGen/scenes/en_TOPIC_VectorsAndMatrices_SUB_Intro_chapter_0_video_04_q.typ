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
    #v(10pt)
    $vec(a) = (5, 7, 2)$ and $vec(b) = (2, -3, -1)$
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice vector addition. We need to find the sum of two vectors: vector a, which is 5, 7, 2, and vector b, which is 2, -3, -1.")
  ]

  #only("2-")[
    #text(fill: blue)[Hint: Add corresponding components]
  ]

  #only("2")[
    #voiceover("To solve this, remember that we add vectors by adding their corresponding components.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the sum of vectors $(5, 7, 2)$ and $(2, -3, -1)$. What is the resulting vector?", 
answerOptions: ("$\begin{pmatrix} 7 \\\\ 4 \\\\ 1 \end{pmatrix}$", "$\begin{pmatrix} -10 \\\\ -4 \\\\ 2 \end{pmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
c: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{pmatrix} \key{a} \\\\ \key{b} \\\\ \key{c} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
) 
), 
)