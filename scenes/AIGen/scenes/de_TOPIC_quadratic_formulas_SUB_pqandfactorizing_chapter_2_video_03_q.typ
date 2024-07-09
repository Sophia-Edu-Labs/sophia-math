#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)

  #only("1-")[
    Löse die quadratische Gleichung:
    #v(20pt)
    #align(center)[$ x^2 - 5x + 6 = 0 $]
  ]

  #v(40pt)

  #only("2-")[
    Mit der p-q-Formel 📐
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Gleichung mit der p-q-Formel zu lösen.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Gleichung x Quadrat minus 5x plus 6 gleich 0 mit der p-q-Formel zu lösen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 5x + 6 = 0$ mit der p-q-Formel.", 
answerOptions: ("$\begin{matrix} x_1 = 2 \\\\ x_2 = 3 \end{matrix}$", "$\begin{matrix} x_1 = 0 \\\\ x_2 = -2 \end{matrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
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