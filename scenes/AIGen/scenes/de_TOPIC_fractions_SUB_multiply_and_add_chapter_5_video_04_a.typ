#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast den Bruch korrekt geändert. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zu dieser Antwort gekommen sind.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Ändern: Gleicher Wert, Anderer Nenner]
  #v(40pt)

  #only("2-")[
    Ursprünglicher Bruch: $5/6$
  ]
  #v(20pt)
  #only("3-")[
    Zielnenner: $12$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem ursprünglichen Bruch, fünf Sechstel.")
  ]
  #only("3")[
    #voiceover("Unser Ziel ist es, diesen Bruch in einen äquivalenten Bruch mit einem Nenner von zwölf zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Den Multiplikator Finden]
  #v(40pt)

  #only("1-")[
    $12 / 6 = 2$
  ]
  #v(20pt)
  #only("2-")[
    Multiplikator: $2$
  ]

  #only("1")[
    #voiceover("Um unseren Multiplikator zu finden, teilen wir den Zielnenner, zwölf, durch unseren aktuellen Nenner, sechs.")
  ]
  #only("2")[
    #voiceover("Das ergibt zwei. Das bedeutet, wir müssen sowohl den Zähler als auch den Nenner mit zwei multiplizieren, um einen äquivalenten Bruch mit dem gewünschten Nenner zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Beide Teile Multiplizieren]
  #v(40pt)

  #only("1-")[
    $5/6 = (5 dot 2)/(6 dot 2)$
  ]
  #v(20pt)
  #only("2-")[
    $= 10/12$
  ]

  #only("1")[
    #voiceover("Jetzt multiplizieren wir sowohl den Zähler als auch den Nenner mit unserem Multiplikator, zwei.")
  ]
  #only("2")[
    #voiceover("Das ergibt zehn Zwölftel, was äquivalent zu unserem ursprünglichen Bruch von fünf Sechstel ist, aber jetzt den gewünschten Nenner von zwölf hat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[
    $5/6 = 10/12$
  ]
  #v(20pt)
  #only("2-")[
    ✅ Äquivalenter Bruch
  ]
  #v(20pt)
  #only("3-")[
    ✅ Nenner von 12
  ]

  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist zehn Zwölftel.")
  ]
  #only("2")[
    #voiceover("Dieser Bruch ist äquivalent zu fünf Sechstel,")
  ]
  #only("3")[
    #voiceover("und er hat den gewünschten Nenner von zwölf. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]