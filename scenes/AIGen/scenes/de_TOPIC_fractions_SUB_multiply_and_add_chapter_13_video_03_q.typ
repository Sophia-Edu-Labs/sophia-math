#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir den folgenden Bruch:")
  ]

  #text(size: 30pt, weight: "bold")[Brüche ändern]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[
      $5/6$
    ]
  ]
  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[
      Ändere diesen Bruch so, dass der Nenner 12 ist.
    ]
  ]

  #only("2")[
    #voiceover("Wir haben den Bruch fünf Sechstel.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch so zu ändern, dass der Nenner zwölf ist, während der Wert des Bruchs gleich bleibt. Wie würdest du dieses Problem angehen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{5}{6}$ in einen Bruch mit einem Nenner von $12$.", 
answerOptions: ("$\frac{10}{12}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)