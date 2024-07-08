#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kubische Funktionen auswerten]
  #v(40pt)
  #only("1-")[
    $f(x) = 2x^3 + 3x^2 + x + 1$
  ]
  #v(20pt)
  #only("2-")[
    Bestimme $f(1)$:
  ]
  #only("1")[
    #voiceover("Keine Sorge, das war ein guter Versuch! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einer kubischen Funktion zu tun, f von x gleich 2x hoch 3 plus 3x hoch 2 plus x plus 1.")
  ]
  #only("2")[
    #voiceover("Unsere Aufgabe ist es, den Wert von f von 1 zu finden, was bedeutet, dass wir die Funktion bei x gleich 1 auswerten müssen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Setze x gleich 1]
  #v(40pt)
  #only("1-")[
    $f(1) = 2(1)^3 + 3(1)^2 + 1 + 1$
  ]
  #v(20pt)
  #only("2-")[
    $f(1) = 2(1) + 3(1) + 1 + 1$
  ]
  #only("1")[
    #voiceover("Lass uns beginnen, indem wir x durch 1 in unserer Funktion ersetzen. Das ergibt f von 1 gleich 2 mal 1 hoch 3 plus 3 mal 1 hoch 2 plus 1 plus 1.")
  ]
  #only("2")[
    #voiceover("Jetzt vereinfachen wir die Exponenten. Eins hoch 3 ist einfach 1, und eins hoch 2 ist auch 1. Also wird unsere Gleichung zu 2 mal 1 plus 3 mal 1 plus 1 plus 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte jeden Term aus]
  #v(40pt)
  #only("1-")[
    $f(1) = 2 + 3 + 1 + 1$
  ]
  #v(20pt)
  #only("2-")[
    $f(1) = 7$
  ]
  #only("1")[
    #voiceover("Nun lass uns jeden Term auswerten. 2 mal 1 ist 2, 3 mal 1 ist 3, und wir haben noch zwei weitere 1er.")
  ]
  #only("2")[
    #voiceover("Wenn wir das alles zusammenzählen, erhalten wir 2 plus 3 plus 1 plus 1, was 7 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[
    $f(1) = 7$
  ]
  #v(20pt)
  #only("2-")[
    Der Wert der Funktion bei x = 1 ist 7. 🎉
  ]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass f von 1 gleich 7 ist.")
  ]
  #only("2")[
    #voiceover("Das bedeutet, wenn wir 1 in unsere kubische Funktion eingeben, erhalten wir 7. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]