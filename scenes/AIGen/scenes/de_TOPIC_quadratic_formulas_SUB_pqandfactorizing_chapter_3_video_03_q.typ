#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)

  #only("1-")[
    Betrachte die quadratische Gleichung:
    #v(10pt)
    $ x^2 + 5x + 6 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    Löse sie mit der p-q-Formel 🧮
  ]

  #only("1")[
    #voiceover("Lass uns üben, quadratische Gleichungen mit der p-q-Formel zu lösen.")
  ]

  #only("2")[
    #voiceover("Betrachte die quadratische Gleichung x Quadrat plus 5x plus 6 gleich null. Kannst du diese Gleichung mit der p-q-Formel lösen?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 + 5x + 6 = 0$ mit der p-q-Formel.", 
answerOptions: ("$\begin{pmatrix} x_1 \\\\ x_2 \end{pmatrix} = \begin{pmatrix} -2 \\\\ -3 \end{pmatrix}$", "$\begin{pmatrix} x_1 \\\\ x_2 \end{pmatrix} = \begin{pmatrix} 8 \\\\ 10 \end{pmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$\begin{pmatrix} x_1 \\\\ x_2 \end{pmatrix} = \begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)