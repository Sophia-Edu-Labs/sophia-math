#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Additionsproblem:")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Addieren]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere die folgenden Brüche:]
  ]

  #v(20pt)

  #only("3-")[
    #align(center)[
      $5/8 + 1/4$
    ]
  ]

  #only("2")[
    #voiceover("Wir müssen die Brüche fünf Achtel und ein Viertel addieren.")
  ]

  #only("3")[
    #voiceover("Wie würdest du diese Addition angehen? Welche Schritte würdest du unternehmen, um dieses Problem zu lösen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Addiere $\frac{5}{8}$ und $\frac{1}{4}$.", 
answerOptions: ("$\frac{7}{8}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)