#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Keine Sorge, das war knapp daneben. Lass uns das Video ansehen und die Lösung Schritt für Schritt durchgehen.")
  ]

  #text(size: 30pt, weight: "bold")[Änderung des Bruchnenners]
  #v(40pt)

  #only("2-")[
    Ursprünglicher Bruch: $7/8$
  ]
  #v(20pt)
  #only("3-")[
    Zielnenner: $16$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem ursprünglichen Bruch, sieben Achtel.")
  ]
  #only("3")[
    #voiceover("Unser Ziel ist es, diesen Bruch in einen äquivalenten Bruch mit einem Nenner von sechzehn zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator finden]
  #v(40pt)

  #only("1-")[
    $16 / 8 = 2$
  ]
  #v(20pt)
  #only("2-")[
    Multiplikator: $2$
  ]

  #only("1")[
    #voiceover("Um unseren Multiplikator zu finden, teilen wir den Zielnenner durch den ursprünglichen Nenner. Sechzehn geteilt durch acht ergibt zwei.")
  ]
  #only("2")[
    #voiceover("Das bedeutet, dass wir sowohl den Zähler als auch den Nenner mit zwei multiplizieren müssen, um einen äquivalenten Bruch mit dem gewünschten Nenner zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator anwenden]
  #v(40pt)

  #only("1-")[
    $7/8 = (7 dot 2) / (8 dot 2)$
  ]
  #v(20pt)
  #only("2-")[
    $= 14/16$
  ]

  #only("1")[
    #voiceover("Jetzt multiplizieren wir sowohl den Zähler als auch den Nenner mit zwei. Sieben mal zwei im Zähler und acht mal zwei im Nenner.")
  ]
  #only("2")[
    #voiceover("Das ergibt vierzehn Sechzehntel, was unsere endgültige Antwort ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[
    $7/8 = 14/16$
  ]
  #v(20pt)
  #only("2-")[
    ✅ Äquivalenter Bruch
  ]
  #v(20pt)
  #only("3-")[
    ✅ Nenner von 16
  ]

  #only("1")[
    #voiceover("Also haben wir erfolgreich sieben Achtel in vierzehn Sechzehntel umgewandelt.")
  ]
  #only("2")[
    #voiceover("Dieser neue Bruch ist äquivalent zu unserem ursprünglichen Bruch,")
  ]
  #only("3")[
    #voiceover("und er hat den Zielnenner von sechzehn. Gut gemacht, dass du dieses Problem gelöst hast!")
  ]
]