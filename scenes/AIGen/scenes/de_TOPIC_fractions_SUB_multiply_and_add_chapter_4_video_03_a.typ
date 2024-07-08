#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast den Bruch korrekt geändert. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche ändern: 5/8 zu ?/16]
  #v(40pt)

  #only("2-")[
    $"Ursprünglicher Bruch:" 5/8$
  ]

  #only("3-")[
    $"Zielnenner:" 16$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem ursprünglichen Bruch, fünf Achtel.")
  ]

  #only("3")[
    #voiceover("Unser Ziel ist es, diesen Bruch in einen äquivalenten Bruch mit einem Nenner von 16 zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Den Multiplikator finden]
  #v(40pt)

  #only("1-")[
    $16 / 8 = 2$
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Multipliziere sowohl den Zähler als auch den Nenner mit 2]]
  ]

  #only("1")[
    #voiceover("Um den Nenner von 8 auf 16 zu ändern, müssen wir ihn mit 2 multiplizieren. Das sehen wir, weil 16 geteilt durch 8 gleich 2 ist.")
  ]

  #only("2")[
    #voiceover("Denke daran, um den Bruch äquivalent zu halten, müssen wir sowohl den Zähler als auch den Nenner mit derselben Zahl multiplizieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Die Multiplikation durchführen]
  #v(40pt)

  #only("1-")[
    $(5 dot 2) / (8 dot 2)$
  ]

  #only("2-")[
    $10 / 16$
  ]

  #only("1")[
    #voiceover("Nun multiplizieren wir sowohl den Zähler als auch den Nenner mit 2. Im Zähler haben wir fünf mal zwei und im Nenner acht mal zwei.")
  ]

  #only("2")[
    #voiceover("Das ergibt zehn Sechzehntel, was unser Endergebnis ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[
    $5/8 = 10/16$
  ]

  #only("2-")[
    #align(center)[✅ Äquivalente Brüche]
  ]

  #only("1")[
    #voiceover("Wir haben also erfolgreich fünf Achtel in einen äquivalenten Bruch mit einem Nenner von 16 geändert. Das Ergebnis ist zehn Sechzehntel.")
  ]

  #only("2")[
    #voiceover("Diese Brüche sind äquivalent, weil wir sowohl den Zähler als auch den Nenner mit derselben Zahl multipliziert haben, was den Wert des Bruchs nicht ändert.")
  ]
]