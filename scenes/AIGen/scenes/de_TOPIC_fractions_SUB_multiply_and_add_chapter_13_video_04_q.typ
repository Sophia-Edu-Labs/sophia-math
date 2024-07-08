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
    #text(size: 24pt)[Addiere $3/10$ und $2/5$]
  ]

  #only("2")[
    #voiceover("Addiere drei Zehntel und zwei Fünftel. Was ist das Ergebnis dieser Addition?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Addiere $\frac{3}{10}$ und $\frac{2}{5}$.", 
answerOptions: ("$\frac{7}{10}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)