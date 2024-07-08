#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("1-")[Die Produktregel wird verwendet, um welche Art von Funktionen zu differenzieren?]
  #v(20pt)

  #only("2-")[a) Summe von Funktionen]
  #v(10pt)
  #only("3-")[b) Differenz von Funktionen]
  #v(10pt)
  #only("4-")[c) Produkt von Funktionen]
  #v(10pt)
  #only("5-")[d) Quotient von Funktionen]

  #only("1")[
    #voiceover("Lass uns dein Verständnis der Produktregel testen. Die Frage ist: Die Produktregel wird verwendet, um welche Art von Funktionen zu differenzieren?")
  ]
  #only("2")[
    #voiceover("Wird sie für die Summe von Funktionen verwendet?")
  ]
  #only("3")[
    #voiceover("Oder wird sie für die Differenz von Funktionen verwendet?")
  ]
  #only("4")[
    #voiceover("Vielleicht wird sie für das Produkt von Funktionen verwendet?")
  ]
  #only("5")[
    #voiceover("Oder vielleicht wird sie für den Quotienten von Funktionen verwendet?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Die Produktregel wird verwendet, um welche Art von Funktionen zu differenzieren?", 
answerOptions: ("Summe von Funktionen", "Differenz von Funktionen", "Produkt von Funktionen", "Quotient von Funktionen"),
correctAnswerIndex: 2 
)