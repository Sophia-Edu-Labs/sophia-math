#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #only("1")[
    #voiceover("Lass uns das folgende Subtraktionsproblem mit Brüchen betrachten.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[
    #align(center)[
      #text(size: 24pt)[Ziehe $2/7$ von $6/7$ ab]
    ]
  ]

  #only("2")[
    #voiceover("Wir müssen zwei Siebtel von sechs Siebtel abziehen. Wie würdest du dieses Problem angehen?")
  ]

  #v(40pt)

  #only("3-")[
    #align(center)[
      #text(size: 20pt)[Was ist das Ergebnis von $6/7 - 2/7$?]
    ]
  ]

  #only("3")[
    #voiceover("Mit anderen Worten, was ist das Ergebnis, wenn wir zwei Siebtel von sechs Siebtel abziehen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ziehe $\frac{2}{7}$ von $\frac{6}{7}$ ab.", 
answerOptions: ("$\frac{4}{7}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)