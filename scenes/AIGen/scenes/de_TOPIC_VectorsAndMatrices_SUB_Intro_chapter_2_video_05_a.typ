#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
  #v(40pt)

  #only("1-")[Gegebene Vektoren: $vec(a) = (1, 1)$ und $vec(b) = (2, 2)$]
  #v(20pt)

  #only("2-")[Formel für das Skalarprodukt: $vec(a) dot vec(b) = a_1 b_1 + a_2 b_2$]
  #v(20pt)

  #only("3-")[Berechnung:]
  #only("3-")[$vec(a) dot vec(b) = (1 dot 2) + (1 dot 2)$]
  #v(10pt)
  #only("4-")[$= 2 + 2$]
  #v(10pt)
  #only("5-")[$= 4$]

  #only("1")[
    #voiceover("Großartig! Du hast das Skalarprodukt korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Erinnere dich zuerst an die Formel für das Skalarprodukt von zwei 2D-Vektoren. Es ist die Summe der Produkte der entsprechenden Komponenten.")
  ]

  #only("3")[
    #voiceover("Nun setzen wir die Werte ein. Wir multiplizieren die ersten Komponenten: 1 mal 2, und addieren das zum Produkt der zweiten Komponenten: 1 mal 2.")
  ]

  #only("4")[
    #voiceover("Das ergibt 2 plus 2.")
  ]

  #only("5")[
    #voiceover("Und das Endergebnis ist 4. Das bestätigt deine korrekte Antwort!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Geometrische Interpretation]
  #v(40pt)

  #only("1-")[Skalarprodukt: $vec(a) dot vec(b) = |vec(a)| |vec(b)| cos(theta)$]
  #v(20pt)

  #only("2-")[Für $vec(a) = (1, 1)$ und $vec(b) = (2, 2)$:]
  #v(10pt)
  #only("3-")[$|vec(a)| = sqrt(1^2 + 1^2) = sqrt(2)$]
  #v(10pt)
  #only("4-")[$|vec(b)| = sqrt(2^2 + 2^2) = 2sqrt(2)$]
  #v(10pt)
  #only("5-")[$cos(theta) = 1$ (Vektoren sind parallel)]

  #only("1")[
    #voiceover("Das Skalarprodukt hat auch eine geometrische Interpretation. Es ist gleich dem Produkt der Beträge der Vektoren und dem Kosinus des Winkels zwischen ihnen.")
  ]

  #only("2")[
    #voiceover("Lass uns das auf unsere Vektoren anwenden.")
  ]

  #only("3")[
    #voiceover("Der Betrag des Vektors a ist die Quadratwurzel aus 1 zum Quadrat plus 1 zum Quadrat, was die Quadratwurzel aus 2 ergibt.")
  ]

  #only("4")[
    #voiceover("Ähnlich ist der Betrag des Vektors b die Quadratwurzel aus 2 zum Quadrat plus 2 zum Quadrat, was 2 mal die Quadratwurzel aus 2 ergibt.")
  ]

  #only("5")[
    #voiceover("Der Kosinus des Winkels zwischen diesen Vektoren ist 1, da sie parallel sind. Das bestätigt unser algebraisches Ergebnis: Quadratwurzel aus 2 mal 2 mal Quadratwurzel aus 2 mal 1 ergibt 4.")
  ]
]