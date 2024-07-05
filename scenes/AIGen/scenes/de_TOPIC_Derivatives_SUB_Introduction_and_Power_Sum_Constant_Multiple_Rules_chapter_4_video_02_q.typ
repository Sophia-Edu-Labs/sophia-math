#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung eines Polynoms]
  #v(40pt)

  #only("1-")[Was ist die Ableitung von $3x^2 + 4x$?]
  #v(30pt)

  #only("2-")[a) $6x + 4$]
  #v(10pt)
  #only("3-")[b) $3x^2 + 4$]
  #v(10pt)
  #only("4-")[c) $6x + 4x$]
  #v(10pt)
  #only("5-")[d) $3x + 4$]

  #only("1")[
    #voiceover("Lass uns dein Verständnis von Ableitungen testen. Wir haben eine Polynomfunktion: 3x Quadrat plus 4x. Was ist ihre Ableitung?")
  ]
  #only("2")[
    #voiceover("Ist es 6x plus 4?")
  ]
  #only("3")[
    #voiceover("Oder ist es 3x Quadrat plus 4?")
  ]
  #only("4")[
    #voiceover("Vielleicht ist es 6x plus 4x?")
  ]
  #only("5")[
    #voiceover("Oder könnte es 3x plus 4 sein?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist die Ableitung von $3x^2 + 4x$?", 
answerOptions: ("$6x + 4$", "$3x^2 + 4$", "$6x + 4x$", "$3x + 4$"),
correctAnswerIndex: 0 
)