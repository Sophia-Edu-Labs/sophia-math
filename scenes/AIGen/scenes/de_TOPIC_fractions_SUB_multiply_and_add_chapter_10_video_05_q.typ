#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
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
    #text(size: 28pt)[$ 3/8 $ von $ 7/8 $]
  ]

  #only("2")[
    #voiceover("Hier ist unsere Aufgabe: Subtrahiere drei Achtel von sieben Achtel.")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 24pt)[Kannst du das lösen?]
  ]

  #only("3")[
    #voiceover("Kannst du das lösen? Versuche es, bevor du zur Lösung weitergehst!")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtrahiere $\frac{3}{8}$ von $\frac{7}{8}$.", 
answerOptions: ("$\frac{4}{8} = \frac{1}{2}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)