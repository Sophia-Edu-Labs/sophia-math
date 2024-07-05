#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Potenzregel für Ableitungen]
  #v(40pt)

  #only("1-")[Was ist die Ableitung von $x^3$?]
  #v(20pt)

  #only("2-")[a) $3x^2$]
  #v(10pt)
  #only("3-")[b) $x^2$]
  #v(10pt)
  #only("4-")[c) $3x$]
  #v(10pt)
  #only("5-")[d) $x^3$]

  #only("1")[
    #voiceover("Lass uns dein Verständnis der Potenzregel für Ableitungen testen. Betrachte die Funktion x hoch drei. Was ist ihre Ableitung?")
  ]
  #only("2")[
    #voiceover("Ist es drei x quadrat,")
  ]
  #only("3")[
    #voiceover("oder vielleicht nur x quadrat,")
  ]
  #only("4")[
    #voiceover("vielleicht drei x,")
  ]
  #only("5")[
    #voiceover("oder könnte es wieder x hoch drei sein?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist die Ableitung von $x^3$?", 
answerOptions: ("$3x^2$", "$x^2$", "$3x$", "$x^3$"),
correctAnswerIndex: 0 
)