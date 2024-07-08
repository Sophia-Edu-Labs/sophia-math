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

  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = (3x^2 + 2x + 1)^5 $]
  ]
  #v(40pt)

  #only("3-")[
    Kannst du $f'(x)$ mit der Kettenregel finden?
  ]

  #only("2")[
    #voiceover("f von x ist gleich die Menge drei x Quadrat plus zwei x plus eins, alles hoch fünf.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, f Strich von x mit der Kettenregel zu finden. Nimm dir einen Moment Zeit, um darüber nachzudenken, wie du dieses Problem angehen würdest.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Verwende die Kettenregel, um $f(x) = (3x^2 + 2x + 1)^5$ zu differenzieren.", 
answerOptions: ("$f'(x) = 5(3x^2 + 2x + 1)^4 	imes (6x + 2)$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)