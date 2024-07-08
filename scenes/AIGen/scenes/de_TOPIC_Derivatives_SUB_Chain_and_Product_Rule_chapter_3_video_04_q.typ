#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir die folgende Funktion:")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = (2x^2 + 3x + 1)^4 $]
  ]
  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich die Größe zwei x Quadrat plus drei x plus eins, alles hoch vier.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Ableitung dieser Funktion, f Strich von x, zu finden. Denke daran, die Kettenregel anzuwenden, wo nötig.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Differentiiere $f(x) = (2x^2 + 3x + 1)^4$.", 
answerOptions: ("$f'(x) = 4(2x^2 + 3x + 1)^3 \cdot (4x + 3)$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)