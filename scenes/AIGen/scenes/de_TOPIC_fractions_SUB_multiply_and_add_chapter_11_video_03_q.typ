#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Lass uns das Subtrahieren von Brüchen üben.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtrahiere:]
    #v(20pt)
    #align(center)[$ 2/5 $ von $ 3/4 $]
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Subtrahiere zwei Fünftel von drei Viertel. Nimm dir einen Moment Zeit, um darüber nachzudenken, wie du dieses Problem angehen würdest.")
  ]

  #only("3-")[
    #text(size: 20pt)[
      Wie würdest du:
      - Einen gemeinsamen Nenner finden?
      - Die Brüche umschreiben?
      - Die Subtraktion durchführen?
    ]
  ]

  #only("3")[
    #voiceover("Während du über dieses Problem nachdenkst, überlege, wie du einen gemeinsamen Nenner finden, die Brüche umschreiben und dann die Subtraktion durchführen würdest. Viel Glück!")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Subtrahiere $\frac{2}{5}$ von $\frac{3}{4}$.", 
answerOptions: ("$\frac{3}{4} - \frac{2}{5} = \frac{15}{20} - \frac{8}{20} = \frac{7}{20}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)