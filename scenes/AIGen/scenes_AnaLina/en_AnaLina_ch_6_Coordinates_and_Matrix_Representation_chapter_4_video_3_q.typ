#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Change of Basis]
#v(40pt)
#only("1-")[
- Given basis $B = (mat(1; 1), mat(1; -1))$
]
#v(20pt)
#only("2-")[
- Vector $v = mat(2; 0)$
]
#only("1")[
#voiceover("Consider the basis B consisting of the vectors (1; 1) and (1; -1).")
]
#only("2")[
#voiceover("And the vector v = (2; 0).")
]
#v(20pt)
#only("3-")[
#text(size: 20pt, weight: "bold")[Question:]
]
#v(10pt)
#only("3-")[
Find the coordinates of $v$ relative to the basis $B$.
]
#only("3")[
#voiceover("The question is: Find the coordinates of v relative to the basis B.")
]
]#questionDef(
  questionText: "Determine the coordinates $[a,b]$ of $v$ relative to the basis $B$, i.e., find $a, b$ such that $v = a \begin{pmatrix} 1 \\\\ 1 \end{pmatrix} + b \begin{pmatrix} 1 \\\\ -1 \end{pmatrix}$.",
  answerOptions: ("$v = 1 \begin{pmatrix} 1 \\\\ 1 \end{pmatrix} + 1 \begin{pmatrix} 1 \\\\ -1 \end{pmatrix}$", "$v = 0 \begin{pmatrix} 1 \\\\ 1 \end{pmatrix} + 0 \begin{pmatrix} 1 \\\\ -1 \end{pmatrix}$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: 0.01
        ),
      b: (
        roundingDecimalPlaces: 2,
        tolerance: 0.01  
      )
    ),
    answerOptionMatcher:("$v = \key{a} \begin{pmatrix} 1 \\\\ 1 \end{pmatrix} + \key{b} \begin{pmatrix} 1 \\\\ -1 \end{pmatrix}$"),
    answerOptionsTypes: (
      "a": "number",
      "b": "number"
    )
  ),
)