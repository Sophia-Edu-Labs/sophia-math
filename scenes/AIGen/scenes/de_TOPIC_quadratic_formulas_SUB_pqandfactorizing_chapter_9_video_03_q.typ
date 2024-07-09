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
  #only("2-")[#text(size: 24pt)[$x^2 + 6x + 9 = 0$]]
  #v(40pt)

  #only("3-")[Löse diese Gleichung durch Faktorisierung 🧮]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Gleichung zu lösen.")
  ]

  #only("2")[
    #voiceover("Betrachte die quadratische Gleichung: x Quadrat plus sechs x plus neun gleich null.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Gleichung durch Faktorisierung zu lösen. Überlege kurz, wie Du dieses Problem angehen würdest.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Löse die quadratische Gleichung $x^2 + 6x + 9 = 0$ durch Faktorisierung.", 
answerOptions: ("Die quadratische Gleichung kann als $(x + 3)(x + 3) = 0$ faktorisiert werden. Daher ist die Lösung $x = -3$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)