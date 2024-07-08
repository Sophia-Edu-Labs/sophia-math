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
    #text(size: 24pt)[Subtrahiere $2/5$ von $4/5$]
  ]

  #only("2")[
    #voiceover("Wir müssen zwei Fünftel von vier Fünftel subtrahieren. Wie würdest Du dieses Problem angehen?")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[💡 Hinweis: Die Brüche haben denselben Nenner]
  ]

  #only("3")[
    #voiceover("Beachte, dass beide Brüche denselben Nenner haben. Das vereinfacht unsere Berechnung.")
  ]

  #v(20pt)

  #only("4-")[
    #text(size: 20pt)[❓ Was ist das Ergebnis dieser Subtraktion?]
  ]

  #only("4")[
    #voiceover("Kannst Du das Ergebnis dieser Subtraktion bestimmen? Nimm Dir einen Moment Zeit, um darüber nachzudenken, bevor wir im nächsten Video zur Lösung übergehen.")
  ]
]

//Typ: KOSTENLOS 
#questionDef( 
questionText: "Subtrahiere $\frac{2}{5}$ von $\frac{4}{5}$.", 
answerOptions: ("$\frac{2}{5}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)