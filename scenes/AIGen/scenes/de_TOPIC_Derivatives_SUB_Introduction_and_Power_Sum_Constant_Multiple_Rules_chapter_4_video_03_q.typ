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

  #text(size: 30pt, weight: "bold")[Ableitung eines Polynoms]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 2x^3 + 5x^2 + x $]
  ]
  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich zwei x hoch drei plus fünf x hoch zwei plus x.")
  ]

  #only("3")[
    #voiceover("Kannst Du die Ableitung dieser Funktion finden? Denke daran, die Potenzregel, Summenregel und die Regel für konstante Vielfache anzuwenden.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = 2x^3 + 5x^2 + x$.", 
answerOptions: ("$f'(x) = 6x^2 + 10x + 1$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)