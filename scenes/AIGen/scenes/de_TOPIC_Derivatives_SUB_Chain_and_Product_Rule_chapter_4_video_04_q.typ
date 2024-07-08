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
    #text()[$ f(x) = x^2 ln(x) $]
  ]
  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich x Quadrat mal der natürlichen Logarithmus von x.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Ableitung dieser Funktion zu finden. Was ist f Strich von x?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = x^2 \, 	ext{ln}(x)$.", 
answerOptions: ("$f'(x) = 2x \, 	ext{ln}(x) + x$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)