#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Betrachten wir die folgende Funktion:")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = (3x^2 + 2x + 1)^6 $]
  ]
  #v(20pt)

  #only("3-")[
    Kannst du diese Funktion mit der Kettenregel ableiten?
  ]

  #only("2")[
    #voiceover("f von x ist gleich die Größe drei x Quadrat plus zwei x plus eins, alles hoch sechs.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Funktion mit der Kettenregel abzuleiten. Nimm dir einen Moment Zeit, um darüber nachzudenken, wie du dieses Problem angehen könntest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Leite $f(x) = (3x^2 + 2x + 1)^6$ mit der Kettenregel ab.", 
answerOptions: ("$f'(x) = 6(3x^2 + 2x + 1)^5 	imes (6x + 2)$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)