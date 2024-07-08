#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Subtraktionsproblem mit Brüchen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtrahiere $3/10$ von $7/10$]
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Kannst du diese Subtraktion durchführen?]
  ]

  #only("2")[
    #voiceover("Subtrahiere drei Zehntel von sieben Zehntel.")
  ]

  #only("3")[
    #voiceover("Kannst du diese Subtraktion durchführen? Nimm dir einen Moment Zeit, um darüber nachzudenken, wie du dieses Problem angehen würdest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtrahiere $\frac{3}{10}$ von $\frac{7}{10}$.", 
answerOptions: ("$\frac{4}{10}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)