#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Basiswechsel]
#v(40pt)
#only("1-")[
- Gegebene Basis $B = (mat(1; 1), mat(1; -1))$
]
#v(20pt)
#only("2-")[
- Vektor $v = mat(2; 0)$
]
#only("1")[
#voiceover("Betrachten Sie die Basis B, die aus den Vektoren (1; 1) und (1; -1) besteht.")
]
#only("2")[
#voiceover("Und den Vektor v = (2; 0).")
]
#v(20pt)
#only("3-")[
#text(size: 20pt, weight: "bold")[Frage:]
]
#v(10pt)
#only("3-")[
Finden Sie die Koordinaten von $v$ relativ zur Basis $B$.
]
#only("3")[
#voiceover("Die Frage ist: Finden Sie die Koordinaten von v relativ zur Basis B.")
]
]#questionDef(
  questionText: "Bestimmen Sie die Koordinaten $[a,b]$ von $v$ relativ zur Basis $B$, d.h. finden Sie $a, b$, so dass $v = a \begin{pmatrix} 1 \\\\ 1 \end{pmatrix} + b \begin{pmatrix} 1 \\\\ -1 \end{pmatrix}$.",
  answerOptions: (),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 0,
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