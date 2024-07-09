#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösen einer quadratischen Gleichung]
  #v(40pt)

  #only("1-")[Betrachte die quadratische Gleichung:]
  #v(20pt)
  #only("2-")[#align(center)[$ x^2 - 6x + 9 = 0 $]]
  #v(20pt)
  #only("3-")[Löse diese Gleichung durch Faktorisierung. 🧮]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Gleichung zu lösen.")
  ]

  #only("2")[
    #voiceover("Betrachte die quadratische Gleichung: x Quadrat minus sechs x plus neun gleich null.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Gleichung mit der Faktorisierungsmethode zu lösen. Denke daran, dass Faktorisierung bedeutet, die Faktoren des quadratischen Ausdrucks zu finden, die, wenn sie miteinander multipliziert werden, die ursprüngliche Gleichung ergeben.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Löse die quadratische Gleichung $x^2 - 6x + 9 = 0$ durch Faktorisierung.", 
answerOptions: ("Die quadratische Gleichung $x^2 - 6x + 9 = 0$ kann als $(x - 3)^2 = 0$ faktorisiert werden. Daher ist die Lösung $x = 3$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)