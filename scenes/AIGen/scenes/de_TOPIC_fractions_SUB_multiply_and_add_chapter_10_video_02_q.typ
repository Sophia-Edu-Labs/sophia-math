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

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Ziehe $2/5$ von $4/5$ ab]
  ]

  #only("2")[
    #voiceover("Wir müssen zwei Fünftel von vier Fünftel abziehen. Wie würdest du dieses Problem angehen?")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Was ist das Ergebnis von $4/5 - 2/5$?]
  ]

  #only("3")[
    #voiceover("Mit anderen Worten, was ist das Ergebnis, wenn wir zwei Fünftel von vier Fünftel abziehen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ziehe $\frac{2}{5}$ von $\frac{4}{5}$ ab.", 
answerOptions: ("$\frac{2}{5}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)