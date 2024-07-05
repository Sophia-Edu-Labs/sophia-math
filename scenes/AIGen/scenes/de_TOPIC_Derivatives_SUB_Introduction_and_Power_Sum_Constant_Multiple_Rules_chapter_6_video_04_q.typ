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

  #text(size: 30pt, weight: "bold")[Ableitung mit der Summenregel]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 3x^4 + 2x^3 + x^2 $]
  ]
  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich drei x hoch vier, plus zwei x hoch drei, plus x hoch zwei.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Ableitung dieser Funktion zu finden, f Strich von x. Denke daran, die Summenregel und die Potenzregel anzuwenden, wo es nötig ist.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = 3x^4 + 2x^3 + x^2$.", 
answerOptions: ("$f'(x) = 12x^3 + 6x^2 + 2x$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)