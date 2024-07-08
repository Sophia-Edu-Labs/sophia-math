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

  #only("2-")[#text(size: 24pt)[$ 1/2 $]]
  #v(20pt)

  #only("3-")[Kannst du diesen Bruch in einen äquivalenten Bruch mit dem Nenner 4 umwandeln?]

  #only("2")[
    #voiceover("Wir haben den Bruch ein halb.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in einen äquivalenten Bruch mit dem Nenner 4 zu ändern. Wie würdest du das angehen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ändere $\frac{1}{2}$ in einen Bruch mit dem Nenner $4$.", 
answerOptions: ("$\frac{2}{4}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)