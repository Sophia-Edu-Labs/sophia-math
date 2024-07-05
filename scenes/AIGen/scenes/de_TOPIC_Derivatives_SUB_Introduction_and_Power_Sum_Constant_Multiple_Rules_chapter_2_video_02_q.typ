#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung einer Summe]
  #v(40pt)

  #only("1-")[Was ist die Ableitung von $f(x) = x^2 + x$?]
  #v(20pt)

  #only("2-")[a) $2x + 1$]
  #v(10pt)
  #only("3-")[b) $x^2 + 1$]
  #v(10pt)
  #only("4-")[c) $2x + x$]
  #v(10pt)
  #only("5-")[d) $2x$]

  #only("1")[
    #voiceover("Lass uns dein Verständnis von Ableitungen testen. Wir haben eine Funktion f von x gleich x Quadrat plus x. Was ist die Ableitung dieser Funktion?")
  ]

  #only("2")[
    #voiceover("Ist es zwei x plus eins,")
  ]

  #only("3")[
    #voiceover("oder ist es x Quadrat plus eins,")
  ]

  #only("4")[
    #voiceover("oder vielleicht zwei x plus x,")
  ]

  #only("5")[
    #voiceover("oder ist es einfach zwei x?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist die Ableitung von $f(x) = x^2 + x$?", 
answerOptions: ("$2x + 1$", "$x^2 + 1$", "$2x + x$", "$2x$"),
correctAnswerIndex: 0 
)