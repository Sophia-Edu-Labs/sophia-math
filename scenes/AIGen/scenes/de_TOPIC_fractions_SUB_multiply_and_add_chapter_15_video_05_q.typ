#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir ein Subtraktionsproblem mit Brüchen.")
  ]

  #text(size: 30pt, weight: "bold")[Bruchsubtraktion]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtrahiere $3/10$ von $9/10$]
  ]

  #only("2")[
    #voiceover("Wir müssen drei Zehntel von neun Zehntel subtrahieren. Was ist das Ergebnis dieser Operation?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Subtrahiere $\frac{3}{10}$ von $\frac{9}{10}$.", 
answerOptions: ("$\frac{6}{10}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)