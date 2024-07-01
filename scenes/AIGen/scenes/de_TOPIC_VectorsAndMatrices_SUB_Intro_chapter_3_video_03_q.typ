#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixdarstellung]
  #v(40pt)

  #only("1-")[
    Betrachte das Array:
    #v(20pt)
    $ mat(1, 2; 3, 4) $
  ]

  #only("1")[
    #voiceover("Lass uns eine numerische Übung zu Matrizen betrachten. Wie würdest Du das auf dem Bildschirm gezeigte Array beschreiben?")
  ]

  #only("2-")[
    Wie würdest Du dieses Array beschreiben?
  ]

  #only("2")[
    #voiceover("Nimm Dir einen Moment Zeit, um darüber nachzudenken, wie Du diese Anordnung von Zahlen charakterisieren würdest. Welches mathematische Objekt stellt es dar?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Wie würdest Du das Array $[[1, 2], [3, 4]]$ beschreiben?", 
answerOptions: ("$\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$", "$\begin{bmatrix} 2 & 0 \\\\ -2 & -4 \end{bmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
c: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
d: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)