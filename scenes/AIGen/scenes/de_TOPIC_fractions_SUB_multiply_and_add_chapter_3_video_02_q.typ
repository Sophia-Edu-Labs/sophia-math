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

  #text(size: 30pt, weight: "bold")[Änderung des Bruchnenners]
  #v(40pt)

  #only("2-")[
    #align(center)[
      #text(size: 24pt)[$ 3/4 $]
    ]
  ]

  #only("2")[
    #voiceover("Wir haben den Bruch drei Viertel.")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Ändere diesen Bruch so, dass er einen Nenner von 8 hat.]
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch so zu ändern, dass er einen Nenner von 8 hat, während sein ursprünglicher Wert beibehalten wird. Wie würdest Du dieses Problem angehen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{3}{4}$ in einen Bruch mit einem Nenner von $8$.", 
answerOptions: ("$\frac{6}{8}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)