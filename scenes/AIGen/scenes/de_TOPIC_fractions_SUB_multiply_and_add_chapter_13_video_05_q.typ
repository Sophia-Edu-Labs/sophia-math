#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Subtraktionsproblem mit Brüchen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Subtrahieren]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtrahiere $1/3$ von $5/6$]
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Was ist das Ergebnis dieser Subtraktion?]
  ]

  #only("2")[
    #voiceover("Subtrahiere ein Drittel von fünf Sechstel.")
  ]

  #only("3")[
    #voiceover("Was ist das Ergebnis dieser Subtraktion? Nimm dir einen Moment Zeit, um darüber nachzudenken, wie du dieses Problem angehen würdest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtrahiere $\frac{1}{3}$ von $\frac{5}{6}$.", 
answerOptions: ("$\frac{1}{2}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)