#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
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
#voiceover("Betrachte die Basis B, bestehend aus den Vektoren (1; 1) und (1; -1).")
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
Finde die Koordinaten von $v$ relativ zur Basis $B$.
]
#only("3")[
#voiceover("Die Frage lautet: Finde die Koordinaten von v relativ zur Basis B.")
]
]#questionDef(
  questionText: "Bestimme die Koordinaten $[a,b]$ von $v$ relativ zur Basis $B$, d.h. finde $a, b$ so, dass $v = a \begin{pmatrix} 1 \\\\ 1 \end{pmatrix} + b \begin{pmatrix} 1 \\\\ -1 \end{pmatrix}$.",
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