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
    #text(size: 24pt)[Subtrahiere $1/6$ von $5/6$]
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Wie würdest du dieses Problem angehen? 🤔]
  ]

  #only("2")[
    #voiceover("Wir müssen ein Sechstel von fünf Sechsteln subtrahieren.")
  ]

  #only("3")[
    #voiceover("Überlege, wie du dieses Problem angehen würdest. Denke daran, dass wir beim Subtrahieren von Brüchen mit demselben Nenner den Nenner beibehalten und die Zähler subtrahieren.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Subtrahiere $\frac{1}{6}$ von $\frac{5}{6}$.", 
answerOptions: ("$\frac{4}{6}$ oder $\frac{2}{3}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)