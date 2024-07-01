#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
  #v(40pt)

  #only("1-")[
    Gegebene Vektoren:
    #v(10pt)
    $vec(a) = (2, 5, 6)$
    #v(10pt)
    $vec(b) = (3, 1, 2)$
  ]

  #v(20pt)

  #only("2-")[
    Formel für das Skalarprodukt:
    #v(10pt)
    $vec(a) dot vec(b) = a_1 b_1 + a_2 b_2 + a_3 b_3$
  ]

  #v(20pt)

  #only("3-")[
    Berechnung:
    #v(10pt)
    $(2 dot 3) + (5 dot 1) + (6 dot 2)$
  ]

  #v(20pt)

  #only("4-")[
    $= 6 + 5 + 12$
  ]

  #v(20pt)

  #only("5-")[
    $= 23$
  ]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben zwei Vektoren gegeben: a, das ist 2, 5, 6, und b, das ist 3, 1, 2.")
  ]

  #only("2")[
    #voiceover("Um das Skalarprodukt zu finden, verwenden wir die Formel: a dot b gleich a1 mal b1, plus a2 mal b2, plus a3 mal b3. Das bedeutet, wir multiplizieren die entsprechenden Komponenten und addieren dann die Ergebnisse.")
  ]

  #only("3")[
    #voiceover("Setzen wir unsere Werte ein. Wir haben 2 mal 3, plus 5 mal 1, plus 6 mal 2.")
  ]

  #only("4")[
    #voiceover("Nun berechnen wir jeden Teil. 2 mal 3 ist 6, 5 mal 1 ist 5, und 6 mal 2 ist 12. Wenn wir diese addieren...")
  ]

  #only("5")[
    #voiceover("Erhalten wir 23! Und das ist unser Endergebnis. Das Skalarprodukt der Vektoren 2, 5, 6 und 3, 1, 2 ist tatsächlich 23.")
  ]
]