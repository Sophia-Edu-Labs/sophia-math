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

  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = x^2 cos(x) $]
  ]
  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich x Quadrat mal Kosinus von x.")
  ]

  #only("3")[
    #voiceover("Kannst Du die Ableitung dieser Funktion bestimmen? Denke daran, die Produktregel sorgfältig anzuwenden.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Bestimme die Ableitung von $f(x) = x^2 \, \cos(x)$.", 
answerOptions: ("$f'(x) = 2x \, \cos(x) - x^2 \, \sin(x)$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)