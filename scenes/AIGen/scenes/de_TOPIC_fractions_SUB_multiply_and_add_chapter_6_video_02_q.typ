#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das folgende Additionsproblem betrachten:")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere die folgenden Brüche:]
    #v(20pt)
    #align(center)[$ 1/4 + 2/4 $]
  ]

  #only("2")[
    #voiceover("Addiere ein Viertel und zwei Viertel. Was ist das Ergebnis dieser Addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Addiere $\frac{1}{4}$ und $\frac{2}{4}$.", 
answerOptions: ("$\frac{3}{4}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)