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

  #text(size: 30pt, weight: "bold")[Den Bruchnenner ändern]
  #v(40pt)

  #only("2-")[
    #align(center)[
      #text(size: 24pt)[$ 3/5 $]
    ]
  ]

  #only("2")[
    #voiceover("Wir haben den Bruch drei Fünftel.")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Ändere diesen Bruch in einen gleichwertigen Bruch mit einem Nenner von 15.]
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in einen gleichwertigen Bruch mit einem Nenner von 15 zu ändern.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{3}{5}$ in einen Bruch mit einem Nenner von $15$.", 
answerOptions: ("$\frac{9}{15}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)