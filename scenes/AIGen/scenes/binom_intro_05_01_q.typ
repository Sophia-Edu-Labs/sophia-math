#import "../sophiatheme.typ": *

#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("In einer Gruppe von 12 Personen sollen Teams gebildet werden. Wie viele Möglichkeiten gibt es,")
  ]
  #only("2")[
    #voiceover("ein Team von 4 Personen zu bilden?")
  ]

  #text(size: 30pt, weight: "bold")[
    Teams bilden
  ]

  #v(40pt)

#only("1-")[
  - 12 Personen
]
#only("2-")[
  - Bilde Team aus 4 Personen
]
#v(40pt)

  #only("3-")[$ binom(12,3) $]

  #only("3")[#voiceover("Ist es der Binomialkoeffizient von 12 über 3?")] 

  #v(10pt)

  #only("4-")[$ binom(12,4) $]

  #only("4")[#voiceover("Oder ist es der Binomialkoeffizient von 12 über 4?")]

  #v(10pt)  

  #only("5-")[$ binom(4,12) $]

  #only("5")[#voiceover("Oder vielleicht der Binomialkoeffizient von 4 über 12?")]
]


#questionDef(
  questionText: "Welcher Binomialkoeffizient gibt die Anzahl der Möglichkeiten an, ein Team von 4 Personen aus einer Gruppe von 12 Personen zu bilden?", 
  // use latex!
  answerOptions: ("$\binom{12}{3}$", "$\binom{12}{4}$", "$\binom{4}{12}$"),
  correctAnswerIndex: 1,
)