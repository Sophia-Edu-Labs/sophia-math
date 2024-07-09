#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
  #v(40pt)

  #only("1-")[Betrachte die quadratische Gleichung:]
  #v(20pt)

  #only("2-")[#text(size: 24pt)[$ x^2 - 5x + 6 = 0 $]]
  #v(40pt)

  #only("3-")[Kannst du diese Gleichung durch Faktorisierung lösen? 🤔]

  #only("1")[
    #voiceover("Lass uns üben, quadratische Gleichungen durch Faktorisierung zu lösen.")
  ]

  #only("2")[
    #voiceover("Betrachte die quadratische Gleichung: x Quadrat minus 5x plus 6 gleich null.")
  ]

  #only("3")[
    #voiceover("Kannst du diese Gleichung durch Faktorisierung lösen? Nimm dir einen Moment Zeit, um darüber nachzudenken, und versuche es selbst zu lösen.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Löse die quadratische Gleichung $x^2 - 5x + 6 = 0$ durch Faktorisierung.", 
answerOptions: ("Die quadratische Gleichung $x^2 - 5x + 6 = 0$ kann als $(x - 2)(x - 3) = 0$ faktorisiert werden. Daher sind die Lösungen $x = 2$ und $x = 3$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)