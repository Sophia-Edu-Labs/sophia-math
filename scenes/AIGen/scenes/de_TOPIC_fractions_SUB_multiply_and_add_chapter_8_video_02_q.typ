#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das Addieren von Brüchen üben.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere die folgenden Brüche:]
    #v(20pt)
    #align(center)[$ 2/5 + 3/10 $]
  ]

  #only("2")[
    #voiceover("Addiere die folgenden Brüche: zwei Fünftel plus drei Zehntel.")
  ]

  #only("3-")[
    #text(size: 20pt)[Was ist das Ergebnis?]
  ]

  #only("3")[
    #voiceover("Was ist das Ergebnis dieser Addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Addiere $\frac{2}{5}$ und $\frac{3}{10}$.", 
answerOptions: ("$\frac{7}{10}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)