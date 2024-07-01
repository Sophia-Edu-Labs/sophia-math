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
    $vec(a) = (3, 4)$ and $vec(b) = (1, 2)$
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice vector addition. We need to find the sum of two vectors: vector a, which is three comma four, and vector b, which is one comma two.")
  ]

  #only("2-")[
    #v(20pt)
    💡 Hint: Add corresponding components
  ]

  #only("2")[
    #voiceover("Remember, to add vectors, we add their corresponding components.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the sum of vectors $(3, 4)$ and $(1, 2)$. What is the resulting vector?", 
answerOptions: ("The resulting vector is $\begin{pmatrix} 4 \\\\ 6 \end{pmatrix}$", "The resulting vector is $\begin{pmatrix} -4 \\\\ -8 \end{pmatrix}$"), 
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
answerOptionMatcher:("The resulting vector is $\begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)