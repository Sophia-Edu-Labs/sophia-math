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
    #text(size: 24pt)[
      $ f(x) = 8x^7 $
    ]
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Finde die Ableitung von $f(x)$.]
  ]

  #only("2")[
    #voiceover("f von x ist gleich 8 mal x hoch 7.")
  ]

  #only("3")[
    #voiceover("Was ist die Ableitung dieser Funktion?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = 8x^7$.", 
answerOptions: ("$f'(x) = 56x^6$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)