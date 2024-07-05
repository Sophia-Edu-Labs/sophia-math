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

  #text(size: 30pt, weight: "bold")[Ableitung mit der Konstantenregel]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[$ f(x) = 9x^5 $]
  ]
  #v(20pt)

  #only("3-")[
    Was ist die Ableitung dieser Funktion?
  ]

  #only("2")[
    #voiceover("f von x ist gleich neun mal x hoch fünf.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Ableitung dieser Funktion zu finden. Denke daran, die Regeln, die wir über Ableitungen gelernt haben, insbesondere die Konstantenregel, anzuwenden. Viel Glück!")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Finde die Ableitung von $f(x) = 9x^5$.", 
answerOptions: ("$f'(x) = 45x^4$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)