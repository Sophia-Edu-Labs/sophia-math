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

  #text(size: 30pt, weight: "bold")[Anwendung der Potenzregel]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 5x^4 $]
  ]

  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich fünf mal x hoch vier.")
  ]

  #only("3")[
    #voiceover("Unsere Aufgabe ist es, die Ableitung dieser Funktion zu finden. Was ist f Strich von x?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = 5x^4$.", 
answerOptions: ("$f'(x) = 20x^3$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)