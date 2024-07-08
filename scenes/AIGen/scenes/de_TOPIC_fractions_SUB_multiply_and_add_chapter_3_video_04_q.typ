#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachte den folgenden Bruch:")
  ]

  #text(size: 30pt, weight: "bold")[Änderung des Bruchnenners]
  #v(40pt)

  #only("2-")[#text(size: 24pt)[$ 7/9 $]]
  #v(20pt)

  #only("3-")[#text(size: 20pt)[Ändere diesen Bruch so, dass er einen Nenner von 18 hat.]]

  #only("2")[
    #voiceover("Wir haben den Bruch sieben Neuntel.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch so zu ändern, dass er einen Nenner von achtzehn hat, während sein ursprünglicher Wert beibehalten wird. Wie würdest Du dieses Problem angehen?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Ändere $\frac{7}{9}$ in einen Bruch mit einem Nenner von $18$.", 
answerOptions: ("$\frac{14}{18}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)