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

  #only("2-")[#text(size: 24pt)[$ 2/3 $]]
  #v(20pt)

  #only("3-")[#text(size: 20pt)[Kannst du diesen Bruch so ändern, dass er einen Nenner von 9 hat?]]

  #only("2")[
    #voiceover("Wir haben den Bruch zwei Drittel.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch so zu ändern, dass er einen Nenner von 9 hat, während sein Wert gleich bleibt. Wie würdest du das machen?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Ändere $\frac{2}{3}$ in einen Bruch mit einem Nenner von $9$.", 
answerOptions: ("$\frac{6}{9}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)