#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("1-")[Die Kettenregel wird verwendet, um welche Art von Funktionen zu differenzieren?]
  #v(20pt)

  #only("2-")[a) Polynomfunktionen]
  #v(10pt)
  #only("3-")[b) Zusammengesetzte Funktionen]
  #v(10pt)
  #only("4-")[c) Trigonometrische Funktionen]
  #v(10pt)
  #only("5-")[d) Exponentialfunktionen]

  #only("1")[
    #voiceover("Bei unserer Erkundung der Kettenregel betrachten wir ihre Anwendung. Die Kettenregel ist ein grundlegendes Konzept in der Analysis, aber für welche spezifische Art von Funktionen hilft sie uns beim Differenzieren?")
  ]

  #only("2")[
    #voiceover("Sind es Polynomfunktionen, wie zum Beispiel $x^2 + 3x + 2$?")
  ]

  #only("3")[
    #voiceover("Oder vielleicht zusammengesetzte Funktionen, wie der Sinus von $x^2$?")
  ]

  #only("4")[
    #voiceover("Vielleicht wird sie hauptsächlich für trigonometrische Funktionen verwendet, wie der Kosinus von $x$?")
  ]

  #only("5")[
    #voiceover("Oder könnte sie hauptsächlich für Exponentialfunktionen, wie $e^x$, verwendet werden?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Die Kettenregel wird verwendet, um welche Art von Funktionen zu differenzieren?", 
answerOptions: ("Polynomfunktionen", "Zusammengesetzte Funktionen", "Trigonometrische Funktionen", "Exponentialfunktionen"),
correctAnswerIndex: 1 
)