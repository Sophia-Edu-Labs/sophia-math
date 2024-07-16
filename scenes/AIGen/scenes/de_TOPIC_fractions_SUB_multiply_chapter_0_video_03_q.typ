#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche mit ganzen Zahlen multiplizieren]
  #v(40pt)

  #only("1-")[Multipliziere $4$ mit $2/3$]
  #v(20pt)

  #only("2-")[Wähle die richtige Antwort:]
  #v(20pt)

  #only("3-")[a) $4/3$]
  #v(10pt)
  #only("4-")[b) $6/3$]
  #v(10pt)
  #only("5-")[c) $8/3$]
  #v(10pt)
  #only("6-")[d) $10/3$]

  #only("1")[
    #voiceover("Lass uns üben, Brüche mit ganzen Zahlen zu multiplizieren. Hier ist unsere Frage: Multipliziere 4 mit zwei Dritteln.")
  ]

  #only("2")[
    #voiceover("Wir müssen die richtige Antwort aus den folgenden Optionen wählen.")
  ]

  #only("3")[
    #voiceover("Ist es vier Drittel?")
  ]

  #only("4")[
    #voiceover("Oder vielleicht sechs Drittel?")
  ]

  #only("5")[
    #voiceover("Könnte es acht Drittel sein?")
  ]

  #only("6")[
    #voiceover("Oder sind es zehn Drittel?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "Multipliziere $4$ mit $\frac{2}{3}$.", 
answerOptions: ("$\frac{4}{3}$", "$\frac{6}{3}$", "$\frac{8}{3}$", "$\frac{10}{3}$"),
correctAnswerIndex: 2 
)