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

  #text(size: 30pt, weight: "bold")[Änderung des Nenners]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[
      $7/8$
    ]
  ]
  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[
      Ändere diesen Bruch in einen äquivalenten Bruch mit dem Nenner 16.
    ]
  ]

  #only("2")[
    #voiceover("Wir haben den Bruch sieben Achtel.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in einen äquivalenten Bruch mit einem Nenner von sechzehn zu ändern. Wie würdest du dieses Problem angehen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{7}{8}$ in einen Bruch mit dem Nenner $16$.", 
answerOptions: ("$\frac{14}{16}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)