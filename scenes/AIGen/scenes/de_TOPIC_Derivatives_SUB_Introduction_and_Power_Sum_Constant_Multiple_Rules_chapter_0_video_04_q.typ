#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Positive Ableitung]
  #v(40pt)
  
  #only("1-")[Wenn die Ableitung einer Funktion an einem Punkt positiv ist, was kannst Du über die Funktion an diesem Punkt aussagen?]
  #v(20pt)
  
  #only("2-")[a) Die Funktion steigt]
  #v(10pt)
  #only("3-")[b) Die Funktion fällt]
  #v(10pt)
  #only("4-")[c) Die Funktion hat ein Maximum]
  #v(10pt)
  #only("5-")[d) Die Funktion ist konstant]
  
  #only("1")[
    #voiceover("Lass uns eine Frage zu Ableitungen betrachten. Wenn die Ableitung einer Funktion an einem Punkt positiv ist, was kannst Du über die Funktion an diesem Punkt aussagen?")
  ]
  #only("2")[
    #voiceover("Ist es, dass die Funktion steigt?")
  ]
  #only("3")[
    #voiceover("Oder fällt die Funktion?")
  ]
  #only("4")[
    #voiceover("Vielleicht hat die Funktion an diesem Punkt ein Maximum?")
  ]
  #only("5")[
    #voiceover("Oder könnte es sein, dass die Funktion konstant ist?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Wenn die Ableitung einer Funktion an einem Punkt positiv ist, was kannst Du über die Funktion an diesem Punkt aussagen?", 
answerOptions: ("Die Funktion steigt", "Die Funktion fällt", "Die Funktion hat ein Maximum", "Die Funktion ist konstant"),
correctAnswerIndex: 0 
)