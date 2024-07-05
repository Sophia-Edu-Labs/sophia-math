#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixdimensionen]
  #v(40pt)

  #only("1-")[Betrachte die folgende Matrix:]
  #v(20pt)

  #only("2-")[
    $ A = mat(
      1, 2, 3;
      4, 5, 6
    ) $
  ]
  #v(40pt)

  #only("3-")[Was sind die Dimensionen dieser Matrix?]
  #v(20pt)

  #only("4-")[a) 2 × 3]
  #v(10pt)
  #only("5-")[b) 3 × 2]
  #v(10pt)
  #only("6-")[c) 1 × 6]
  #v(10pt)
  #only("7-")[d) 6 × 1]

  #only("1")[
    #voiceover("Lass uns ein wichtiges Konzept der linearen Algebra erkunden: Matrixdimensionen.")
  ]

  #only("2")[
    #voiceover("Hier haben wir eine Matrix A. Nimm dir einen Moment Zeit, um ihre Struktur zu betrachten.")
  ]

  #only("3")[
    #voiceover("Nun, die Frage ist: Was sind die Dimensionen dieser Matrix?")
  ]

  #only("4")[
    #voiceover("Könnte es 2 mal 3 sein?")
  ]

  #only("5")[
    #voiceover("Oder vielleicht 3 mal 2?")
  ]

  #only("6")[
    #voiceover("Vielleicht ist es 1 mal 6?")
  ]

  #only("7")[
    #voiceover("Oder könnte es 6 mal 1 sein?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Was sind die Dimensionen der Matrix $[[1, 2, 3], [4, 5, 6]]$?", 
answerOptions: ("$2 \\times 3$", "$3 \\times 2$", "$1 \\times 6$", "$6 \\times 1$"),
correctAnswerIndex: 0 
)