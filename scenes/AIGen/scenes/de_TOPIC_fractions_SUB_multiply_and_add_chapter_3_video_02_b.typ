#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Leider war das nicht korrekt. Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, wie es richtig gemacht wird.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche ändern: 3/4 zu ?/8]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Gegeben: $3/4$]
    #text(size: 24pt)[Ziel: ?/8]
  ]

  #only("2")[
    #voiceover("Wir beginnen mit dem Bruch drei Viertel und unser Ziel ist es, ihn in einen äquivalenten Bruch mit einem Nenner von 8 zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Den Multiplikator finden]

  #v(40pt)

  #only("1-")[
    $"Aktueller Nenner" = 4$
    #v(10pt)
    $"Zielnenner" = 8$
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Ziel durch aktuell teilen]]
  ]

  #only("3-")[
    $"Multiplikator" = 8 / 4 = 2$
  ]

  #only("1")[
    #voiceover("Zuerst müssen wir herausfinden, wie wir von unserem aktuellen Nenner, 4, zu unserem Zielnenner, 8, gelangen.")
  ]

  #only("2")[
    #voiceover("Dazu teilen wir den Zielnenner durch den aktuellen Nenner.")
  ]

  #only("3")[
    #voiceover("Acht geteilt durch vier ergibt zwei. Das bedeutet, wir müssen sowohl den Zähler als auch den Nenner mit 2 multiplizieren, um einen äquivalenten Bruch mit 8 als Nenner zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Den Multiplikator anwenden]

  #v(40pt)

  #only("1-")[
    $3/4 = (3 dot 2)/(4 dot 2)$
  ]

  #only("2-")[
    $3/4 = 6/8$
  ]

  #only("1")[
    #voiceover("Nun wenden wir unseren Multiplikator sowohl auf den Zähler als auch auf den Nenner an. Drei multipliziert mit zwei ergibt sechs, und vier multipliziert mit zwei ergibt acht.")
  ]

  #only("2")[
    #voiceover("Also ist drei Viertel äquivalent zu sechs Achtel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verifizierung]

  #v(40pt)

  #only("1-")[
    $3/4 = 0.75$
    #v(10pt)
    $6/8 = 0.75$
  ]

  #only("2-")[
    #align(center)[#text(fill:green)[✓ Äquivalent!]]
  ]

  #only("1")[
    #voiceover("Zur Verifizierung können wir beide Brüche in Dezimalzahlen umwandeln. Drei Viertel ergibt null Komma sieben fünf, und sechs Achtel ergibt ebenfalls null Komma sieben fünf.")
  ]

  #only("2")[
    #voiceover("Das bestätigt, dass unser neuer Bruch, sechs Achtel, tatsächlich äquivalent zum ursprünglichen Bruch, drei Viertel, ist. Gut gemacht beim Lösen dieses Problems!")
  ]
]