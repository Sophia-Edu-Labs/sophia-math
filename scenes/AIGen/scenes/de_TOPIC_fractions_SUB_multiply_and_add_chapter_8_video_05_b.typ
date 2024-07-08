#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche mit gleichen Nennern addieren]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $7/8 + 4/8$
    ]
  ]

  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt durch. Lass uns die Brüche 7/8 und 4/8 addieren.")
  ]

  #only("2-")[
    #align(center)[
      $7/8 + 4/8 = (7+4)/8$
    ]
  ]

  #only("2")[
    #voiceover("Beim Addieren von Brüchen mit dem gleichen Nenner behalten wir den Nenner bei und addieren die Zähler.")
  ]

  #only("3-")[
    #align(center)[
      $(7+4)/8 = 11/8$
    ]
  ]

  #only("3")[
    #voiceover("Sieben plus vier ergibt elf, also ist unser Ergebnis 11/8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis vereinfachen]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $11/8 = 1 3/8$
    ]
  ]

  #only("1")[
    #voiceover("Nun lass uns unser Ergebnis vereinfachen. 11/8 kann als gemischte Zahl geschrieben werden.")
  ]

  #only("2-")[
    - 11 ÷ 8 = 1 Rest 3
    #v(10pt)
    - 1 Ganzes + 3/8
  ]

  #only("2")[
    #voiceover("Dazu teilen wir 11 durch 8. Das ergibt 1 mit einem Rest von 3. Also haben wir 1 Ganzes plus 3/8.")
  ]

  #only("3-")[
    #align(center)[
      $11/8 = 1 3/8$
    ]
  ]

  #only("3")[
    #voiceover("Daher ist unsere endgültige Antwort 1 und 3/8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unsere Arbeit überprüfen]
  #v(40pt)

  #only("1-")[
    Ursprüngliches Problem: $7/8 + 4/8$
    #v(10pt)
    Unsere Lösung: $11/8$ oder $1 3/8$
  ]

  #only("1")[
    #voiceover("Lass uns schnell unsere Arbeit überprüfen. Wir haben mit 7/8 plus 4/8 begonnen und sind bei 11/8 gelandet, was auch als 1 und 3/8 geschrieben werden kann.")
  ]

  #only("2-")[
    #align(center)[
      $7/8 + 4/8 = 11/8 = 1 3/8$
    ]
  ]

  #only("2")[
    #voiceover("Diese Lösung ist sinnvoll, da wir zwei Brüche addiert haben, die jeweils kleiner als 1 sind, und ein Ergebnis erhalten haben, das größer als 1, aber kleiner als 2 ist.")
  ]

  #only("3")[
    #voiceover("Super Arbeit bei der Lösung dieses Problems! Denk daran, beim Addieren von Brüchen mit dem gleichen Nenner behalten wir den Nenner bei und addieren die Zähler. Dann können wir, wenn möglich, vereinfachen.")
  ]
]