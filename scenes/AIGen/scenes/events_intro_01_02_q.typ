#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("Betrachten wir das folgende Zufallsexperiment:")
  ]
  
  #text(size: 30pt, weight: "bold")[Ziehen einer Kugel aus einer Urne]
  
  #v(20pt)
  
  #only("2-")[
    Die Urne enthält 12 Kugeln mit den Zahlen 1 bis 12.
  ]

  #only("2")[
    #voiceover("In der Urne befinden sich 12 Kugeln, nummeriert von 1 bis 12. Es wird eine Kugel zufällig gezogen.")
  ]

  #v(40pt)
  
  #only("3")[
    #voiceover("Nun ist folgendes Ereignis in Mengenschreibweise gegeben:")
  ]

  #only("3-")[
    $ E = {3, 6, 9, 12} $
  ]
  
  #v(20pt)
  
  #only("4")[
    #voiceover("Deine Aufgabe ist es, dieses Ereignis E in Worten zu beschreiben.")
  ]
  
  #only("5")[
    #voiceover("Überlege, welche Eigenschaft die Zahlen 3, 6, 9 und 12 gemeinsam haben.")
  ]
  
  #v(30pt)
  
  #only("5")[
    Das Ereignis $E$ bedeutet: ...
  ]
  
  #v(20pt)
]

#questionDef(
  questionText: "Beschreibe das Ereignis $E = \{3, 6, 9, 12\}$ in Worten.",
  answerOptions: ("Die Zahl auf der Kugel ist durch drei teilbar / ein vielfaches von drei", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)