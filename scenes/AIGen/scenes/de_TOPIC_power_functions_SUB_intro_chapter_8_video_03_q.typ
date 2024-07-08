#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vereinfachung von Potenzfunktionen]
  #v(40pt)

  #only("1-")[Betrachte die Funktion:]
  #v(20pt)

  #only("2-")[#text(size: 24pt)[$ f(x) = 25x^(-1) $]]
  #v(40pt)

  #only("3-")[Kannst du diese Funktion vereinfachen? 🤔]

  #only("1")[
    #voiceover("Lass uns eine herausfordernde Übung zu Potenzfunktionen angehen.")
  ]

  #only("2")[
    #voiceover("Betrachte die Funktion f von x gleich 25 mal x hoch minus 1.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Funktion zu vereinfachen. Überlege dir, wie du dieses Problem angehen könntest.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Vereinfache $f(x) = 25x^{-1}$.", 
answerOptions: ("$f(x) = \frac{25}{x}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)