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
    #text()[$ f(x) = (x^2 + 4x + 4)^3 $]
  ]

  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich die Größe x Quadrat plus vier x plus vier, alles hoch drei.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Ableitung dieser Funktion zu finden. Denke daran, die Kettenregel anzuwenden, wo es nötig ist.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Bestimme die Ableitung $f(x) = (x^2 + 4x + 4)^3$.", 
answerOptions: ("$f'(x) = 3(x^2 + 4x + 4)^2 	imes (2x + 4)$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)