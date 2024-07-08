#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns ein Additionsproblem mit Brüchen betrachten.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere die folgenden Brüche:]
    #v(20pt)
    #align(center)[$ 2/5 + 3/10 $]
  ]

  #only("2")[
    #voiceover("Wir müssen zwei Brüche addieren: zwei Fünftel und drei Zehntel. Was ist das Ergebnis dieser Addition?")
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