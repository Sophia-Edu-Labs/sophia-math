#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Bruchproblem.")
  ]

  #text(size: 30pt, weight: "bold")[Äquivalente Brüche]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Ändere $2/3$ in einen Bruch mit einem Nenner von 9]
  ]

  #only("2")[
    #voiceover("Wir müssen zwei Drittel in einen äquivalenten Bruch mit einem Nenner von neun umwandeln. Wie können wir das angehen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{2}{3}$ in einen Bruch mit einem Nenner von $9$.", 
answerOptions: ("$\frac{6}{9}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)