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
    #text()[$ f(x) = (4x^3 + 2x)^5 $]
  ]

  #v(40pt)

  #only("3-")[
    Kannst Du diese Funktion mit der Kettenregel ableiten?
  ]

  #only("2")[
    #voiceover("f von x ist gleich die Menge vier x hoch drei plus zwei x, alles hoch fünf.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Funktion mit der Kettenregel abzuleiten. Nimm Dir einen Moment Zeit, um darüber nachzudenken, wie Du dieses Problem angehen würdest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Leite $f(x) = (4x^3 + 2x)^5$ mit der Kettenregel ab.", 
answerOptions: ("$f'(x) = 5(4x^3 + 2x)^4 \cdot (12x^2 + 2)$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)