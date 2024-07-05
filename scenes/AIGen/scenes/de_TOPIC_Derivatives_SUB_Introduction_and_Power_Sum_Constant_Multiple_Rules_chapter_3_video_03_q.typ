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

  #text(size: 30pt, weight: "bold")[Konstante Vielfache Regel]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 7x^3 $]
  ]
  #v(40pt)

  #only("3-")[
    Was ist die Ableitung dieser Funktion?
  ]

  #only("2")[
    #voiceover("f von x ist gleich sieben mal x hoch drei.")
  ]

  #only("3")[
    #voiceover("Was ist die Ableitung dieser Funktion? Überlege, wie wir hier die konstante Vielfache Regel anwenden können.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = 7x^3$.", 
answerOptions: ("Die Ableitung von $f(x) = 7x^3$ ist $f'(x) = 21x^2$.", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)