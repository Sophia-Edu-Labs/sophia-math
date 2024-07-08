#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
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
    #text(size: 28pt)[$ 1/4 $ von $ 3/4 $]
  ]

  #only("2")[
    #voiceover("In dieser Übung müssen wir ein Viertel von drei Vierteln subtrahieren. Kannst du das Ergebnis bestimmen?")
  ]

  #only("3-")[
    #text(size: 24pt)[Schreibe deine Antwort als Bruch.]
  ]

  #only("3")[
    #voiceover("Denke daran, deine endgültige Antwort als Bruch auszudrücken. Nimm dir Zeit, um es zu berechnen!")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtrahiere $\frac{1}{4}$ von $\frac{3}{4}$.", 
answerOptions: ("$\frac{1}{2}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)