#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("Betrachte das")
  ]
  
  #text(size: 30pt, weight: "bold")[Zufallsexperiment]
  
  #v(20pt)
  
  #only("2-")[
    #align(center)[  #text(weight: "bold")[⚅ Einmaliger Würfelwurf ⚀]]
  ]

  #only("2")[
    #voiceover("Zufallsexperiment eines Einmaligen Würfelwurfs mit einem fairen Würfel.")
  ]

  #v(40pt)
  
  #only("3")[
    #voiceover("Notiere nun das Ereignis 'Die gewürfelte Augenzahl ist gerade' in Mengenschreibweise.")
  ]
    #only("3-")[
  - $E$: Augenzahl ist gerade
  ]
  
  #only("4")[
    #voiceover("Tipp: Ein Ereignis ist eine Menge von Ergebnissen, die in geschweiften Klammern notiert wird.")
  ]
  
  #v(10pt)
  
  #only("4")[
  - $E = {...} $
  ]
  
  #v(20pt)
]

#questionDef(
  questionText: "Notiere das Ereignis 'Die gewürfelte Augenzahl ist gerade' in Mengenschreibweise.",
  answerOptions: ("$E = {2,4,6}$ oder eine äquivalente Aussage", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)