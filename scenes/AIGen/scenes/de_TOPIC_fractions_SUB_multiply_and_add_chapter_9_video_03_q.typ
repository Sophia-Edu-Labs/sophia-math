#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #only("1")[
    #voiceover("Lass uns ein Subtraktionsproblem mit Brüchen betrachten.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtrahiere $1/8$ von $5/8$]
  ]

  #only("2")[
    #voiceover("Wir müssen ein Achtel von fünf Achteln subtrahieren. Wie würdest Du dieses Problem angehen?")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Was ist das Ergebnis von $5/8 - 1/8$?]
  ]

  #only("3")[
    #voiceover("Mit anderen Worten, was ist das Ergebnis, wenn wir ein Achtel von fünf Achteln subtrahieren?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtrahiere $\frac{1}{8}$ von $\frac{5}{8}$.", 
answerOptions: ("$\frac{4}{8}$ oder $\frac{1}{2}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)