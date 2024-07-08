#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das folgende Subtraktionsproblem mit Brüchen betrachten.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Ziehe $2/5$ von $7/10$ ab]
  ]

  #only("2")[
    #voiceover("Wir müssen zwei Fünftel von sieben Zehntel abziehen. Wie würdest Du dieses Problem angehen?")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[❓ Welche Schritte würdest Du unternehmen, um dies zu lösen?]
  ]

  #only("3")[
    #voiceover("Überlege, welche Schritte Du unternehmen würdest, um dieses Problem zu lösen. Denke daran, dass wir beim Subtrahieren von Brüchen ihre Nenner sorgfältig berücksichtigen müssen.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Ziehe $\frac{2}{5}$ von $\frac{7}{10}$ ab.", 
answerOptions: ("$\frac{3}{10}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)