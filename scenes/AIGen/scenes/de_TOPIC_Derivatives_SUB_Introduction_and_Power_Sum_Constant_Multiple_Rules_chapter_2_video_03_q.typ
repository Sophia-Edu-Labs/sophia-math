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

  #text(size: 30pt, weight: "bold")[Polynomableitung]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 3x^3 + 2x^2 $]
  ]

  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich drei x hoch drei plus zwei x hoch zwei.")
  ]

  #only("3")[
    #voiceover("Was ist die Ableitung f Strich von x für diese Funktion?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = 3x^3 + 2x^2$.", 
answerOptions: ("$f'(x) = 9x^2 + 4x$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)