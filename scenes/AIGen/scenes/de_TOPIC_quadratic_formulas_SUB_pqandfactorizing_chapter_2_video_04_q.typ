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
    #align(center)[$ x^2 + 4x + 4 = 0 $]
  ]

  #v(40pt)

  #only("2-")[
    Verwende die p-q-Formel:
    #v(20pt)
    #align(center)[$ x = -p/2 ± sqrt((p/2)^2 - q) $]
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Gleichung mit der p-q-Formel zu lösen.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Gleichung x Quadrat plus 4x plus 4 gleich 0 mit der p-q-Formel zu lösen. Denke daran, die p-q-Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 + 4x + 4 = 0$ mit der p-q-Formel.", 
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