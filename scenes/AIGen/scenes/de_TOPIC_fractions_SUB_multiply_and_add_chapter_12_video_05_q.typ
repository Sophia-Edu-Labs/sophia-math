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

  #text(size: 30pt, weight: "bold")[Bruchsubtraktion]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Ziehe $2/7$ von $5/7$ ab]
  ]

  #only("2")[
    #voiceover("Wir müssen zwei Siebtel von fünf Siebtel abziehen. Wie würdest du dieses Problem angehen?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Ziehe $\frac{2}{7}$ von $\frac{5}{7}$ ab.", 
answerOptions: ("$\frac{3}{7}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)