#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung eines konstanten Vielfachen]
  #v(40pt)

  #only("1-")[Was ist die Ableitung von $5x^2$?]
  #v(20pt)

  #only("2-")[a) $10x$]
  #v(10pt)
  #only("3-")[b) $5x$]
  #v(10pt)
  #only("4-")[c) $5x^2$]
  #v(10pt)
  #only("5-")[d) $10$]

  #only("1")[
    #voiceover("Lass uns dein Verständnis der Regel für konstante Vielfache bei Ableitungen testen. Betrachte die Funktion fünf x Quadrat. Was ist ihre Ableitung?")
  ]

  #only("2")[
    #voiceover("Ist es zehn x?")
  ]

  #only("3")[
    #voiceover("Oder ist es fünf x?")
  ]

  #only("4")[
    #voiceover("Vielleicht ist es einfach fünf x Quadrat?")
  ]

  #only("5")[
    #voiceover("Oder könnte es einfach zehn sein?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist die Ableitung von $5x^2$?", 
answerOptions: ("$10x$", "$5x$", "$5x^2$", "$10$"),
correctAnswerIndex: 0 
)