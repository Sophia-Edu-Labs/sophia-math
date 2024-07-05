#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Änderungsrate]
  #v(40pt)

  #only("1-")[Was stellt eine Ableitung dar?]
  #v(20pt)

  #only("2-")[a) Die Fläche unter einer Kurve 📊]
  #v(10pt)
  #only("3-")[b) Die Änderungsrate 📈]
  #v(10pt)
  #only("4-")[c) Der Maximalwert 🔝]
  #v(10pt)
  #only("5-")[d) Der Minimalwert 🔻]

  #only("1")[
    #voiceover("Lass uns dein Verständnis von Ableitungen testen. Was stellt eine Ableitung dar?")
  ]
  #only("2")[
    #voiceover("Ist es die Fläche unter einer Kurve,")
  ]
  #only("3")[
    #voiceover("oder die Änderungsrate,")
  ]
  #only("4")[
    #voiceover("oder vielleicht der Maximalwert,")
  ]
  #only("5")[
    #voiceover("oder vielleicht der Minimalwert?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Was stellt eine Ableitung dar?", 
answerOptions: ("Die Fläche unter einer Kurve", "Die Änderungsrate", "Der Maximalwert", "Der Minimalwert"),
correctAnswerIndex: 1 
)