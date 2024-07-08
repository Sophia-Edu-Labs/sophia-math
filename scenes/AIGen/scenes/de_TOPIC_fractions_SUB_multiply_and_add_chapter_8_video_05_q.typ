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

  #text(size: 30pt, weight: "bold")[Brüche addieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere die folgenden Brüche:]
    #v(20pt)
    #align(center)[$ 7/8 + 1/2 $]
  ]

  #only("2")[
    #voiceover("Wir müssen sieben Achtel und ein Halb addieren. Was ist das Ergebnis dieser Addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Addiere $\frac{7}{8}$ und $\frac{1}{2}$.", 
answerOptions: ("$\frac{7}{8} + \frac{1}{2} = \frac{7}{8} + \frac{4}{8} = \frac{11}{8}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)