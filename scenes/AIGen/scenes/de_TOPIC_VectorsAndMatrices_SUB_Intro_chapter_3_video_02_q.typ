#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Definition]
  #v(40pt)

  #only("1-")[Was ist eine Matrix? 🤔]
  #v(20pt)

  #only("2-")[a) Eine einzelne Zahl 🔢]
  #v(10pt)
  #only("3-")[b) Eine Reihe von Zahlen ➡️]
  #v(10pt)
  #only("4-")[c) Ein rechteckiges Array von Zahlen 📊]
  #v(10pt)
  #only("5-")[d) Keine der oben genannten ❌]

  #only("1")[
    #voiceover("Lass uns dein Verständnis von Matrizen testen. Was genau ist eine Matrix?")
  ]
  #only("2")[
    #voiceover("Ist es einfach eine einzelne Zahl,")
  ]
  #only("3")[
    #voiceover("oder vielleicht nur eine Reihe von Zahlen,")
  ]
  #only("4")[
    #voiceover("oder ist es ein rechteckiges Array von Zahlen,")
  ]
  #only("5")[
    #voiceover("oder könnte es keine dieser Optionen sein?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist eine Matrix?", 
answerOptions: ("Eine einzelne Zahl", "Eine Reihe von Zahlen", "Ein rechteckiges Array von Zahlen", "Keine der oben genannten"),
correctAnswerIndex: 2 
)