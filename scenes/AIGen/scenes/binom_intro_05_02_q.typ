#import "../sophiatheme.typ": *

#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("In einer Klasse mit 20 Schülern soll eine Gruppe von 3 Schülern ausgewählt werden, um ein Projekt zu präsentieren. Wie viele Möglichkeiten gibt es,")
  ]

  #only("2")[
    #voiceover("diese Gruppe von 3 Schülern auszuwählen?")
  ]

  #text(size: 30pt, weight: "bold")[
    Gruppe für Präsentation 
  ]

  #v(40pt)
 
  #only("1-")[
    - 20 Schüler in der Klasse
  ]

  #only("2-")[
    - Wähle Gruppe von 3 Schülern
  ]

  #v(40pt)

  #only("3-")[$ binom(3,20) $]

  #only("3")[#voiceover("Ist es der Binomialkoeffizient von 3 über 20?")]

  #v(10pt)

  #only("4-")[$ binom(20,2) $]

  #only("4")[#voiceover("Oder ist es der Binomialkoeffizient von 20 über 2?")]

  #v(10pt)

  #only("5-")[$ binom(20,3) $]

  #only("5")[#voiceover("Oder vielleicht der Binomialkoeffizient von 20 über 3?")]
]

#questionDef(
  questionText: "Welcher Binomialkoeffizient gibt die Anzahl der Möglichkeiten an, eine Gruppe von 3 Schülern aus einer Klasse mit 20 Schülern auszuwählen?",
  // use latex!  
  answerOptions: ("$\\binom{3}{20}$", "$\\binom{20}{2}$", "$\\binom{20}{3}$"),
  correctAnswerIndex: 2,  
)