#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachte die folgende Funktion:")
  ]

  #text(size: 30pt, weight: "bold")[Ableitung einer Polynomfunktion]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 5x^5 + 3x^4 + x^3 $]
  ]
  #v(40pt)

  #only("3-")[
    Was ist die Ableitung $f'(x)$?
  ]

  #only("2")[
    #voiceover("f von x ist gleich 5 mal x hoch 5, plus 3 mal x hoch 4, plus x hoch 3.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Ableitung dieser Funktion zu finden. Denke daran, die Potenzregel, Summenregel und die Regel für konstante Faktoren anzuwenden.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = 5x^5 + 3x^4 + x^3$.", 
answerOptions: ("$f'(x) = 25x^4 + 12x^3 + 3x^2$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)