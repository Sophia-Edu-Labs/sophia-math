#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Brüche multiplizieren]
  #v(40pt)

  #only("1-")[Multipliziere 6 mit $5/6$]
  #v(20pt)

  #only("2-")[a) $5/6$]
  #v(10pt)
  #only("3-")[b) $10/6$]
  #v(10pt)
  #only("4-")[c) $15/6$]
  #v(10pt)
  #only("5-")[d) $30/6$]

  #only("1")[
    #voiceover("Lass uns üben, Brüche mit ganzen Zahlen zu multiplizieren. Hier ist unsere Frage: Multipliziere 6 mit fünf Sechsteln.")
  ]

  #only("2")[
    #voiceover("Ist die Antwort fünf Sechstel?")
  ]

  #only("3")[
    #voiceover("Oder ist es zehn Sechstel?")
  ]

  #only("4")[
    #voiceover("Vielleicht ist es fünfzehn Sechstel?")
  ]

  #only("5")[
    #voiceover("Oder könnte es dreißig Sechstel sein?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Multipliziere $6$ mit $\frac{5}{6}$.", 
answerOptions: ("$\frac{5}{6}$", "$\frac{10}{6}$", "$\frac{15}{6}$", "$\frac{30}{6}$"),
correctAnswerIndex: 0 
)