#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das Addieren von Brüchen üben.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere die folgenden Brüche:]
  ]
  #v(20pt)

  #only("3-")[
    #align(center)[
      $4/9 + 1/3$
    ]
  ]

  #only("2")[
    #voiceover("Wir werden zwei Brüche addieren.")
  ]

  #only("3")[
    #voiceover("Die Aufgabe ist, vier Neuntel und ein Drittel zu addieren. Was ist die Summe dieser Brüche?")
  ]
]

//Typ: FREI
#questionDef( 
questionText: "Addiere $\frac{4}{9}$ und $\frac{1}{3}$.", 
answerOptions: ("$\frac{7}{9}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)