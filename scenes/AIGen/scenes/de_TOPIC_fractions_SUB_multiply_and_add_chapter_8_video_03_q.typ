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
    #align(center)[$ 5/6 + 1/3 $]
  ]

  #only("2")[
    #voiceover("Wir müssen fünf Sechstel und ein Drittel addieren. Was ist das Ergebnis dieser Addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Addiere $\frac{5}{6}$ und $\frac{1}{3}$.", 
answerOptions: ("$\frac{7}{6}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)