#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixmultiplikation]
#v(40pt)

#only("1-")[
$A = mat(1, 2; 3, 4)$  $B = mat(2, 0; 1, 3)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(?, ?; ?, ?)$
]

#v(20pt)

#only("3-")[
$C_(11) = 1 dot 2 + 2 dot 1 = 2 + 2 = 4$
]

#only("4-")[
$C_(12) = 1 dot 0 + 2 dot 3 = 0 + 6 = 6$
]

#only("5-")[
$C_(21) = 3 dot 2 + 4 dot 1 = 6 + 4 = 10$
]

#only("6-")[
$C_(22) = 3 dot 0 + 4 dot 3 = 0 + 12 = 12$
]

#only("7-")[
$C = mat(4, 6; 10, 12)$
]

#only("1")[
#voiceover("Keine Sorge, das war eine schwierige Aufgabe. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei Matrizen, A und B.")
]

#only("2")[
#voiceover("Um diese Matrizen zu multiplizieren, berechnen wir jedes Element der resultierenden Matrix C. C wird die gleiche Anzahl an Zeilen wie A und die gleiche Anzahl an Spalten wie B haben.")
]

#only("3")[
#voiceover("Beginnen wir mit dem Element in der ersten Zeile, ersten Spalte von C. Wir multiplizieren die erste Zeile von A mit der ersten Spalte von B: eins mal zwei, plus zwei mal eins, was vier ergibt.")
]

#only("4")[
#voiceover("Für das Element in der ersten Zeile, zweiten Spalte von C multiplizieren wir die erste Zeile von A mit der zweiten Spalte von B: eins mal null, plus zwei mal drei, was sechs ergibt.")
]

#only("5")[
#voiceover("Gehen wir zur zweiten Zeile, ersten Spalte von C. Wir multiplizieren die zweite Zeile von A mit der ersten Spalte von B: drei mal zwei, plus vier mal eins, was zehn ergibt.")
]

#only("6")[
#voiceover("Schließlich für die zweite Zeile, zweite Spalte von C multiplizieren wir die zweite Zeile von A mit der zweiten Spalte von B: drei mal null, plus vier mal drei, was zwölf ergibt.")
]

#only("7")[
#voiceover("Und da haben wir es! Die resultierende Matrix C ist vier, sechs in der ersten Zeile und zehn, zwölf in der zweiten Zeile. Gut gemacht beim Lösen dieses Matrixmultiplikationsproblems!")
]
]