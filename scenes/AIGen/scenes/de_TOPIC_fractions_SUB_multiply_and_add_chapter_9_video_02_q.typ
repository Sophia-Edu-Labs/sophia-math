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
    #text(size: 24pt)[Subtrahiere $3/4$ von $5/4$]
  ]

  #only("2")[
    #voiceover("Wir müssen drei Viertel von fünf Viertel subtrahieren. Wie würdest du dieses Problem angehen?")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Kannst du diese Subtraktion lösen?]
  ]

  #only("3")[
    #voiceover("Überlege, wie du diese Subtraktion durchführen würdest. Denke daran, dass wir bei der Subtraktion von Brüchen mit demselben Nenner nur die Zähler subtrahieren.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Subtrahiere $\frac{3}{4}$ von $\frac{5}{4}$.", 
answerOptions: ("$\frac{1}{4}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)