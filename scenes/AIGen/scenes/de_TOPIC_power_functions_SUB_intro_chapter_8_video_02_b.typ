#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösen von Potenzgleichungen]
  #v(40pt)
  #only("1-")[Gleichung: $2x^4 = 32$]
  #v(20pt)
  #only("2-")[Ziel: Löse nach $x$ auf]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt durch. Wir beginnen mit der Gleichung 2 x hoch 4 gleich 32.")
  ]
  #only("2")[
    #voiceover("Unser Ziel ist es, nach x aufzulösen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Potenzterm isolieren]
  #v(40pt)
  #only("1-")[- Teile beide Seiten durch 2:]
  #v(20pt)
  #only("2-")[$ x^4 = 16 $]
  #only("1")[
    #voiceover("Zuerst isolieren wir den Potenzterm. Das machen wir, indem wir beide Seiten der Gleichung durch 2 teilen.")
  ]
  #only("2")[
    #voiceover("Das ergibt x hoch 4 gleich 16.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Ziehe die vierte Wurzel]
  #v(40pt)
  #only("1-")[- Ziehe die vierte Wurzel aus beiden Seiten:]
  #v(20pt)
  #only("2-")[$ root(4, x^4) = root(4, 16) $]
  #v(20pt)
  #only("3-")[$ x = root(4, 16) $]
  #only("1")[
    #voiceover("Um x zu isolieren, müssen wir nun die vierte Wurzel aus beiden Seiten ziehen.")
  ]
  #only("2")[
    #voiceover("Die vierte Wurzel aus x hoch 4 ist einfach x, also bleibt x gleich der vierten Wurzel aus 16.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht unsere Gleichung zu x gleich der vierten Wurzel aus 16.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Wurzel vereinfachen]
  #v(40pt)
  #only("1-")[- Vereinfache $root(4, 16)$:]
  #v(20pt)
  #only("2-")[$ x = 2 $]
  #v(20pt)
  #only("3-")[✅ Überprüfe: $2(2^4) = 2(16) = 32$]
  #only("1")[
    #voiceover("Der letzte Schritt ist, die vierte Wurzel aus 16 zu vereinfachen.")
  ]
  #only("2")[
    #voiceover("Die vierte Wurzel aus 16 ist 2, weil 2 hoch 4 gleich 16 ist. Also ist unsere endgültige Antwort x gleich 2.")
  ]
  #only("3")[
    #voiceover("Wir können unsere Antwort überprüfen, indem wir sie in die ursprüngliche Gleichung einsetzen. 2 mal 2 hoch 4 ist gleich 2 mal 16, was tatsächlich 32 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Ursprüngliche Gleichung: $2x^4 = 32$]
  #v(20pt)
  #only("2-")[- Lösung: $x = 2$]
  #v(20pt)
  #only("3-")[💡 Denke daran: Die n-te Wurzel ist das Inverse der n-ten Potenz!]
  #only("1")[
    #voiceover("Zusammenfassend haben wir mit der Gleichung 2 x hoch 4 gleich 32 begonnen.")
  ]
  #only("2")[
    #voiceover("Und wir haben herausgefunden, dass die Lösung x gleich 2 ist.")
  ]
  #only("3")[
    #voiceover("Denke daran, dass das Ziehen der n-ten Wurzel die Umkehrung des Erhebens zur n-ten Potenz ist. Das ist der Schlüssel zum Lösen von Potenzgleichungen!")
  ]
]