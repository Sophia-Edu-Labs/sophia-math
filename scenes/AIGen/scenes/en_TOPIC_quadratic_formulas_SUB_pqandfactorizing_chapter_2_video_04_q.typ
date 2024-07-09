#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)

  #only("1-")[
    Solve the quadratic equation:
    #v(20pt)
    #align(center)[$ x^2 + 4x + 4 = 0 $]
  ]

  #v(40pt)

  #only("2-")[
    Using the p-q formula:
    #v(20pt)
    #align(center)[$ x = -p/2 ± sqrt((p/2)^2 - q) $]
  ]

  #only("1")[
    #voiceover("Let's practice solving a quadratic equation using the p-q formula.")
  ]

  #only("2")[
    #voiceover("Your task is to solve the equation x squared plus 4x plus 4 equals 0 using the p-q formula. Remember, the p-q formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 + 4x + 4 = 0$ using the p-q formula.", 
answerOptions: ("$\begin{matrix} x_1 = -2 \\\\ x_2 = -2 \end{matrix}$", "$\begin{matrix} x_1 = 8 \\\\ x_2 = 8 \end{matrix}$"), 
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
answerOptionMatcher:("$\begin{matrix} x_1 = \key{a} \\\\ x_2 = \key{b} \end{matrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)