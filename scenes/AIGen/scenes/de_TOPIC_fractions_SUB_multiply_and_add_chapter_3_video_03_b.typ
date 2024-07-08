#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche ändern: Gleicher Wert, anderer Nenner]
  #v(40pt)

  #only("2-")[
    Ursprünglicher Bruch: $2/5$
  ]
  #v(20pt)
  #only("3-")[
    Zielnenner: $10$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem ursprünglichen Bruch, zwei Fünftel.")
  ]
  #only("3")[
    #voiceover("Unser Ziel ist es, diesen Bruch in einen äquivalenten Bruch mit einem Nenner von 10 zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Den Multiplikator finden]
  #v(40pt)

  #only("1-")[
    $10 / 5 = 2$
  ]
  #v(20pt)
  #only("2-")[
    Multiplikator: $2$
  ]

  #only("1")[
    #voiceover("Um unseren Multiplikator zu finden, teilen wir den Zielnenner, 10, durch unseren aktuellen Nenner, 5.")
  ]
  #only("2")[
    #voiceover("Das ergibt 2. Das bedeutet, wir müssen sowohl den Zähler als auch den Nenner mit 2 multiplizieren, um einen äquivalenten Bruch mit dem gewünschten Nenner zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Den Multiplikator anwenden]
  #v(40pt)

  #only("1-")[
    $2/5 = (2 dot 2) / (5 dot 2)$
  ]
  #v(20pt)
  #only("2-")[
    $= 4/10$
  ]

  #only("1")[
    #voiceover("Nun multiplizieren wir sowohl den Zähler als auch den Nenner mit 2. Zwei mal zwei im Zähler und fünf mal zwei im Nenner.")
  ]
  #only("2")[
    #voiceover("Das ergibt vier Zehntel, was unsere endgültige Antwort ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[
    $2/5 = 4/10$
  ]
  #v(20pt)
  #only("2-")[
    ✅ Äquivalenter Bruch
  ]
  #v(20pt)
  #only("3-")[
    ✅ Nenner von 10
  ]

  #only("1")[
    #voiceover("Also haben wir erfolgreich zwei Fünftel in vier Zehntel geändert.")
  ]
  #only("2")[
    #voiceover("Dieser neue Bruch ist äquivalent zu unserem ursprünglichen Bruch, das heißt, sie repräsentieren denselben Wert.")
  ]
  #only("3")[
    #voiceover("Und wir haben unser Ziel erreicht, einen Nenner von 10 zu haben. Gut gemacht!")
  ]
]