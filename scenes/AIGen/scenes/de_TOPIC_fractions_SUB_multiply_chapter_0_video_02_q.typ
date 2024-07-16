#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Multiplikationsproblem:")
  ]

  #text(size: 30pt, weight: "bold")[Multiplikation einer ganzen Zahl mit einem Bruch]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Multipliziere $3$ mit $1/2$]
  ]

  #only("2")[
    #voiceover("Multipliziere 3 mit ein halb.")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Was ist das Ergebnis dieser Multiplikation?]
  ]

  #only("3")[
    #voiceover("Was ist das Ergebnis dieser Multiplikation?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Multipliziere $3$ mit $\frac{1}{2}$.", 
answerOptions: ("$3/2$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)