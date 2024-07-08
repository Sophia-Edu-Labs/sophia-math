#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche ändern: Gleicher Wert, anderer Nenner]
  #v(40pt)

  #only("1-")[Ursprünglicher Bruch: $5/6$]
  #v(20pt)
  #only("2-")[Zielnenner: $12$]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, wie wir fünf Sechstel in einen gleichwertigen Bruch mit einem Nenner von 12 umwandeln.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit dem Bruch fünf Sechstel, und unser Ziel ist es, einen gleichwertigen Bruch mit einem Nenner von 12 zu erstellen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator finden]
  #v(40pt)

  #only("1-")[Schritt 1: Teile den Zielnenner durch den ursprünglichen Nenner]
  #v(20pt)
  #only("2-")[$12 / 6 = 2$]
  #v(20pt)
  #only("3-")[Multiplikator: $2$]

  #only("1")[
    #voiceover("Um unseren Multiplikator zu finden, teilen wir den Zielnenner durch den ursprünglichen Nenner.")
  ]

  #only("2")[
    #voiceover("Also teilen wir 12 durch 6, was 2 ergibt.")
  ]

  #only("3")[
    #voiceover("Das bedeutet, wir müssen sowohl den Zähler als auch den Nenner mit 2 multiplizieren, um unseren neuen Bruch zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator anwenden]
  #v(40pt)

  #only("1-")[Schritt 2: Multipliziere sowohl den Zähler als auch den Nenner mit 2]
  #v(20pt)
  #only("2-")[$5/6 = (5 dot 2)/(6 dot 2)$]
  #v(20pt)
  #only("3-")[$= 10/12$]

  #only("1")[
    #voiceover("Jetzt wenden wir unseren Multiplikator sowohl auf den Zähler als auch auf den Nenner des ursprünglichen Bruchs an.")
  ]

  #only("2")[
    #voiceover("Wir multiplizieren 5 im Zähler mit 2 und 6 im Nenner mit 2.")
  ]

  #only("3")[
    #voiceover("Das ergibt den Bruch zehn Zwölftel, der gleichwertig zu fünf Sechstel ist, aber jetzt einen Nenner von 12 hat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis überprüfen]
  #v(40pt)

  #only("1-")[Ursprünglicher Bruch: $5/6 = 0.8333...$]
  #v(20pt)
  #only("2-")[Neuer Bruch: $10/12 = 0.8333...$]
  #v(20pt)
  #only("3-")[✅ Gleichwertige Brüche!]

  #only("1")[
    #voiceover("Lass uns unser Ergebnis überprüfen. Der ursprüngliche Bruch, fünf Sechstel, als Dezimalzahl ist ungefähr 0.8333...")
  ]

  #only("2")[
    #voiceover("Unser neuer Bruch, zehn Zwölftel, ergibt ebenfalls ungefähr 0.8333...")
  ]

  #only("3")[
    #voiceover("Das bestätigt, dass wir erfolgreich fünf Sechstel in einen gleichwertigen Bruch mit einem Nenner von 12 umgewandelt haben. Gut gemacht!")
  ]
]