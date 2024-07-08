#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Additionsproblem:")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Addieren]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere $1/4$ und $1/2$]
  ]

  #only("2")[
    #voiceover("Addiere ein Viertel und ein Halb. Was ist das Ergebnis dieser Addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Addiere $\frac{1}{4}$ und $\frac{1}{2}$.", 
answerOptions: ("$\frac{3}{4}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)