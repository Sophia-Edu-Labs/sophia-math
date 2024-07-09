#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Lösen einer quadratischen Gleichung]
  #v(40pt)

  #only("1-")[Betrachte die quadratische Gleichung:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[$x^2 + 3x - 10 = 0$]]
  #v(40pt)

  #only("3-")[Löse diese Gleichung durch Faktorisierung. 🧮]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Gleichung zu lösen.")
  ]

  #only("2")[
    #voiceover("Betrachte die quadratische Gleichung: x Quadrat plus drei x minus zehn gleich null.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Gleichung mit der Faktorisierungsmethode zu lösen. Denke daran, dass Faktorisierung bedeutet, zwei Zahlen zu finden, die multipliziert den konstanten Term ergeben und addiert den Koeffizienten von x. Viel Glück!")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Löse die quadratische Gleichung $x^2 + 3x - 10 = 0$ durch Faktorisierung.", 
answerOptions: ("Die quadratische Gleichung $x^2 + 3x - 10 = 0$ kann als $(x + 5)(x - 2) = 0$ faktorisiert werden. Daher sind die Lösungen $x = -5$ und $x = 2$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)