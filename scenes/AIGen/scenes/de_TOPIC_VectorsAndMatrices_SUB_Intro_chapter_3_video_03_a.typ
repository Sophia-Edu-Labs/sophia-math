#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[2x2 Matrix]
  #v(40pt)

  #only("1-")[#align(center)[$ mat(1, 2; 3, 4) $]]
  #v(20pt)

  #only("2-")[- Rechteckiges Zahlenarray 📊]
  #v(10pt)
  #only("3-")[- 2 Reihen und 2 Spalten ↔↕]
  #v(10pt)
  #only("4-")[- Elemente: $a_(11) = 1$, $a_(12) = 2$, $a_(21) = 3$, $a_(22) = 4$]
  #v(10pt)
  #only("5-")[- Kann lineare Transformationen darstellen 🔄]

  #only("1")[
    #voiceover("Gut gemacht! Du hast korrekt erkannt, dass dies eine 2x2-Matrix ist. Lass uns genauer betrachten, was das bedeutet.")
  ]

  #only("2")[
    #voiceover("Eine Matrix ist ein rechteckiges Zahlenarray. In diesem Fall haben wir eine 2x2-Matrix, was bedeutet")
  ]

  #only("3")[
    #voiceover("dass sie 2 Reihen und 2 Spalten hat. Deshalb nennen wir es eine 2x2-Matrix.")
  ]

  #only("4")[
    #voiceover("Die Elemente dieser Matrix sind: a Index 1 1 gleich 1, a Index 1 2 gleich 2, a Index 2 1 gleich 3 und a Index 2 2 gleich 4. Der erste Index gibt die Reihe an, der zweite die Spalte.")
  ]

  #only("5")[
    #voiceover("Matrizen wie diese können lineare Transformationen im zweidimensionalen Raum darstellen. Zum Beispiel könnte diese Matrix eine Kombination aus Skalierung und Rotation darstellen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixeigenschaften]
  #v(40pt)

  #only("1-")[- Dimensionen: 2 x 2]
  #v(10pt)
  #only("2-")[- Quadratische Matrix (gleiche Anzahl an Reihen und Spalten) ⬛]
  #v(10pt)
  #only("3-")[- Determinante: $det(mat(1, 2; 3, 4)) = 1 dot 4 - 2 dot 3 = -2$]
  #v(10pt)
  #only("4-")[- Spur: $tr(mat(1, 2; 3, 4)) = 1 + 4 = 5$]

  #only("1")[
    #voiceover("Schauen wir uns nun einige Eigenschaften dieser Matrix an. Erstens, wie bereits erwähnt, sind ihre Dimensionen 2x2.")
  ]

  #only("2")[
    #voiceover("Dies ist auch eine sogenannte quadratische Matrix, da sie die gleiche Anzahl an Reihen wie Spalten hat.")
  ]

  #only("3")[
    #voiceover("Eine wichtige Eigenschaft quadratischer Matrizen ist die Determinante. Für eine 2x2-Matrix berechnen wir sie als a Index 1 1 mal a Index 2 2, minus a Index 1 2 mal a Index 2 1. In diesem Fall ist das 1 mal 4, minus 2 mal 3, was gleich minus 2 ist.")
  ]

  #only("4")[
    #voiceover("Eine weitere Eigenschaft ist die Spur, die die Summe der Elemente auf der Hauptdiagonale ist. Hier ist das 1 plus 4, was gleich 5 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixanwendungen]
  #v(40pt)

  #only("1-")[- Lineare Gleichungssysteme 📝]
  #v(10pt)
  #only("2-")[- Lineare Transformationen 🔄]
  #v(10pt)
  #only("3-")[- Datenrepräsentation 📊]
  #v(10pt)
  #only("4-")[- Computergrafik 🖼️]

  #only("1")[
    #voiceover("Matrizen wie diese haben viele Anwendungen. Zum Beispiel können sie lineare Gleichungssysteme darstellen.")
  ]

  #only("2")[
    #voiceover("Wie bereits erwähnt, können sie lineare Transformationen darstellen, die in vielen Bereichen der Mathematik und Physik wichtig sind.")
  ]

  #only("3")[
    #voiceover("Matrizen werden auch verwendet, um Daten in vielen Bereichen zu repräsentieren und zu organisieren, von der Statistik bis zum maschinellen Lernen.")
  ]

  #only("4")[
    #voiceover("In der Computergrafik werden Matrizen verwendet, um Transformationen an Objekten durchzuführen, wie Rotation, Skalierung und Translation.")
  ]
]