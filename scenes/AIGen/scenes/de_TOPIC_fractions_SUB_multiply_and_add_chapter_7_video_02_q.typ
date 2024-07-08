#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Lass uns das Addieren von Brüchen mit einer einfachen Übung üben.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere die folgenden Brüche:]
  ]
  #v(20pt)

  #only("3-")[
    #align(center)[
      $3/7 + 2/7$
    ]
  ]

  #only("2")[
    #voiceover("Wir werden zwei Brüche addieren.")
  ]

  #only("3")[
    #voiceover("Hier ist unsere Aufgabe: Addiere drei Siebtel und zwei Siebtel.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Addiere $\frac{3}{7}$ und $\frac{2}{7}$.", 
answerOptions: ("$\frac{5}{7}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)