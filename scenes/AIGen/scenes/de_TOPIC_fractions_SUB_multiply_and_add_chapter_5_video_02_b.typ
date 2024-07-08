#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche ändern: Neuer Nenner]
  #v(40pt)

  #only("1-")[Ursprünglicher Bruch: $2/3$]
  #v(20pt)
  #only("2-")[Zielnenner: $9$]

  #only("1")[
    #voiceover("Leider ist das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit dem Bruch zwei Drittel und unser Ziel ist es, ihn in einen äquivalenten Bruch mit einem Nenner von 9 zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Den Multiplikator finden]
  #v(40pt)

  #only("1-")[Finde $n$ wo: $3 \cdot n = 9$]
  #v(20pt)
  #only("2-")[Löse: $n = 9/3 = 3$]

  #only("1")[
    #voiceover("Zuerst müssen wir herausfinden, mit welcher Zahl wir den ursprünglichen Nenner multiplizieren, um den neuen Nenner zu erhalten.")
  ]

  #only("2")[
    #voiceover("Wir sehen, dass 3 mal 3 gleich 9 ist, also ist unser Multiplikator 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Den Multiplikator anwenden]
  #v(40pt)

  #only("1-")[Multipliziere sowohl Zähler als auch Nenner mit 3:]
  #v(20pt)
  #only("2-")[$(2 \cdot 3)/(3 \cdot 3) = 6/9$]

  #only("1")[
    #voiceover("Um den Bruch äquivalent zu halten, multiplizieren wir nun sowohl den Zähler als auch den Nenner mit unserem Multiplikator, 3.")
  ]

  #only("2")[
    #voiceover("Zwei mal drei im Zähler ergibt 6, und drei mal drei im Nenner ergibt 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[Ursprünglicher Bruch: $2/3$]
  #v(20pt)
  #only("2-")[Äquivalenter Bruch: $6/9$]
  #v(20pt)
  #only("3-")[✅ Der Nenner ist jetzt 9]

  #only("1")[
    #voiceover("Also, wir haben unseren ursprünglichen Bruch, zwei Drittel, erfolgreich geändert.")
  ]

  #only("2")[
    #voiceover("in den äquivalenten Bruch sechs Neuntel.")
  ]

  #only("3")[
    #voiceover("Wir haben unser Ziel erreicht, einen äquivalenten Bruch mit einem Nenner von 9 zu erstellen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtigste Erkenntnis]
  #v(40pt)

  #only("1-")[Um den Nenner eines Bruchs zu ändern:]
  #v(20pt)
  #only("2-")[1. Finde den Multiplikator]
  #v(20pt)
  #only("3-")[2. Multipliziere sowohl Zähler als auch Nenner]
  #v(20pt)
  #only("4-")[3. Das Ergebnis ist ein äquivalenter Bruch]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Schritte zusammenfassen, um den Nenner eines Bruchs zu ändern:")
  ]

  #only("2")[
    #voiceover("Finde zuerst die Zahl, mit der der alte Nenner multipliziert wird, um den neuen zu erhalten.")
  ]

  #only("3")[
    #voiceover("Dann multipliziere sowohl den Zähler als auch den Nenner mit dieser Zahl.")
  ]

  #only("4")[
    #voiceover("Das Ergebnis ist ein äquivalenter Bruch mit dem gewünschten Nenner.")
  ]
]