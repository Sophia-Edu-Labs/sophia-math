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
  #only("2-")[#text(size: 24pt)[$x^2 - 4x + 4 = 0$]]
  #v(40pt)

  #only("3-")[Löse diese Gleichung durch Faktorisierung 🧮]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Gleichung zu lösen.")
  ]

  #only("2")[
    #voiceover("Betrachte die quadratische Gleichung: x Quadrat minus vier x plus vier gleich null.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Gleichung durch Faktorisierung zu lösen. Denke daran, dass Faktorisierung bedeutet, die Faktoren zu finden, die, wenn sie miteinander multipliziert werden, unseren quadratischen Ausdruck ergeben.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Löse die quadratische Gleichung $x^2 - 4x + 4 = 0$ durch Faktorisierung.", 
answerOptions: ("Die quadratische Gleichung $x^2 - 4x + 4 = 0$ kann als $(x - 2)(x - 2) = 0$ faktorisiert werden. Daher ist die Lösung $x = 2$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)