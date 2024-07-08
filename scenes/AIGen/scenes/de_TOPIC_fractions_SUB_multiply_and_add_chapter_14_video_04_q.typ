#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Additionsproblem mit Brüchen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Addieren]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Addiere die folgenden Brüche:]
  ]

  #v(20pt)

  #only("3-")[
    $ 2/3 + 1/6 $
  ]

  #v(40pt)

  #only("4-")[
    Was ist das Ergebnis dieser Addition?
  ]

  #only("2")[
    #voiceover("Wir müssen zwei Brüche addieren.")
  ]

  #only("3")[
    #voiceover("Die Brüche, die wir addieren müssen, sind zwei Drittel und ein Sechstel.")
  ]

  #only("4")[
    #voiceover("Kannst du die Summe dieser Brüche bestimmen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Addiere $\frac{2}{3}$ und $\frac{1}{6}$.", 
answerOptions: ("$\frac{5}{6}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)