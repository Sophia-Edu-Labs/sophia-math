#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Lass uns das folgende Bruchproblem betrachten:")
  ]

  #text(size: 30pt, weight: "bold")[Äquivalente Brüche]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Ändere $4/5$ in einen Bruch mit einem Nenner von 20.]
  ]

  #only("2")[
    #voiceover("Ändere vier Fünftel in einen Bruch mit einem Nenner von zwanzig.")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[🤔 Wie können wir den Bruch ändern, ohne seinen Wert zu verändern?]
  ]

  #only("3")[
    #voiceover("Überlege, wie wir diesen Bruch ändern können, ohne seinen Wert zu verändern. Welche Operation könnten wir sowohl am Zähler als auch am Nenner durchführen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{4}{5}$ in einen Bruch mit einem Nenner von $20$.", 
answerOptions: ("$\frac{16}{20}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)