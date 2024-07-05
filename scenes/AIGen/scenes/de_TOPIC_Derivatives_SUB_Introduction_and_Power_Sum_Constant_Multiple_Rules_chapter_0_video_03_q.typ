#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung und kritische Punkte]
  #v(40pt)

  #only("1-")[Wenn die Ableitung einer Funktion an einem Punkt null ist, was kannst du über die Funktion an diesem Punkt aussagen?]
  #v(20pt)

  #only("2-")[a) Die Funktion hat ein Maximum oder Minimum]
  #v(10pt)
  #only("3-")[b) Die Funktion steigt]
  #v(10pt)
  #only("4-")[c) Die Funktion fällt]
  #v(10pt)
  #only("5-")[d) Die Funktion ist konstant]

  #only("1")[
    #voiceover("Betrachten wir eine Frage zu Ableitungen und ihren Implikationen. Wenn die Ableitung einer Funktion an einem Punkt null ist, was kannst du über die Funktion an diesem Punkt aussagen?")
  ]

  #only("2")[
    #voiceover("Könnte es bedeuten, dass die Funktion an diesem Punkt ein Maximum oder Minimum hat?")
  ]

  #only("3")[
    #voiceover("Oder vielleicht zeigt es an, dass die Funktion an diesem Punkt steigt?")
  ]

  #only("4")[
    #voiceover("Vielleicht deutet es darauf hin, dass die Funktion an diesem Punkt fällt?")
  ]

  #only("5")[
    #voiceover("Oder impliziert es, dass die Funktion an diesem Punkt konstant ist?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "Wenn die Ableitung einer Funktion an einem Punkt null ist, was kannst du über die Funktion an diesem Punkt aussagen?", 
answerOptions: ("Die Funktion hat ein Maximum oder Minimum", "Die Funktion steigt", "Die Funktion fällt", "Die Funktion ist konstant"),
correctAnswerIndex: 0 
)