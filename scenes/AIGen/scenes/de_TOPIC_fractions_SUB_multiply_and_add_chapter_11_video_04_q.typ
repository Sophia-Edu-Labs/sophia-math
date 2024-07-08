#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Subtraktionsproblem:")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtrahiere $1/3$ von $5/6$]
  ]

  #only("2")[
    #voiceover("Subtrahiere ein Drittel von fünf Sechstel.")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Wie würdest Du dieses Problem angehen? 🤔]
  ]

  #only("3")[
    #voiceover("Wie würdest Du dieses Problem angehen? Nimm Dir einen Moment Zeit, um darüber nachzudenken.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtrahiere $\frac{1}{3}$ von $\frac{5}{6}$.", 
answerOptions: ("$\frac{1}{2}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)