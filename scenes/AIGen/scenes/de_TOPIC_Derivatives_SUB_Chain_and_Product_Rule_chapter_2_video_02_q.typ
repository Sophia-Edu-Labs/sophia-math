#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kombinieren von Differentiationsregeln]
  #v(40pt)

  #only("1-")[
    Gegeben ist die Funktion:
    $ f(x) = x^2 (3x^2 + 2x + 1)^5 $
  ]

  #v(20pt)

  #only("2-")[
    Welche Regeln müssen wir anwenden, um diese Funktion zu differenzieren?
  ]

  #v(20pt)

  #only("3-")[a) Nur die Kettenregel]
  #v(10pt)
  #only("4-")[b) Nur die Produktregel]
  #v(10pt)
  #only("5-")[c) Sowohl die Kettenregel als auch die Produktregel]
  #v(10pt)
  #only("6-")[d) Keine von beiden]

  #only("1")[
    #voiceover("Betrachten wir die folgende Funktion: f von x gleich x Quadrat mal die Größe 3x Quadrat plus 2x plus 1, alles hoch 5.")
  ]

  #only("2")[
    #voiceover("Welche Regeln müssen wir anwenden, um diese Funktion zu differenzieren?")
  ]

  #only("3")[
    #voiceover("Ist es nur die Kettenregel?")
  ]

  #only("4")[
    #voiceover("Oder benötigen wir nur die Produktregel?")
  ]

  #only("5")[
    #voiceover("Vielleicht müssen wir sowohl die Kettenregel als auch die Produktregel verwenden?")
  ]

  #only("6")[
    #voiceover("Oder vielleicht brauchen wir keine dieser Regeln?")
  ]
]

//Typ: MC 
#questionDef( 
questionText: "Welche Regeln müssen wir anwenden, um $f(x) = x^2 (3x^2 + 2x + 1)^5$ zu differenzieren?", 
answerOptions: ("Nur die Kettenregel", "Nur die Produktregel", "Sowohl die Kettenregel als auch die Produktregel", "Keine von beiden"),
correctAnswerIndex: 2 
)