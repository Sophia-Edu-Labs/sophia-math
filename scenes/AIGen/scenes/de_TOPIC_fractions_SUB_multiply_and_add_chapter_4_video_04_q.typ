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

  #text(size: 30pt, weight: "bold")[Ändern des Bruchnenners]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[$ 4/7 $]
  ]

  #v(20pt)

  #only("3-")[
    Kannst du diesen Bruch in einen äquivalenten Bruch mit einem Nenner von 14 umwandeln? 🤔
  ]

  #only("2")[
    #voiceover("Wir haben den Bruch vier Siebtel.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in einen äquivalenten Bruch mit einem Nenner von 14 zu ändern. Überlege, welche Operationen du sowohl am Zähler als auch am Nenner durchführen musst, um dies zu erreichen. Denke daran, dass du das, was du mit dem Nenner machst, auch mit dem Zähler machen musst, um den Bruch äquivalent zu halten.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{4}{7}$ in einen Bruch mit einem Nenner von $14$.", 
answerOptions: ("$\frac{8}{14}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)