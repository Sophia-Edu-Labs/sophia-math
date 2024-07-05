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
$A = mat(2, 1; 0, 3)$   $B = mat(1, 4; 5, 2)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(?, ?; ?, ?)$
]

#v(20pt)

#only("3-")[
$C_(11) = 2 dot 1 + 1 dot 5 = 2 + 5 = 7$
]

#only("4-")[
$C_(12) = 2 dot 4 + 1 dot 2 = 8 + 2 = 10$
]

#only("5-")[
$C_(21) = 0 dot 1 + 3 dot 5 = 0 + 15 = 15$
]

#only("6-")[
$C_(22) = 0 dot 4 + 3 dot 2 = 0 + 6 = 6$
]

#only("7-")[
$C = mat(7, 10; 15, 6)$
]

#only("1")[
#voiceover("Großartige Arbeit beim Lösen dieses Matrixmultiplikationsproblems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit den beiden Matrizen A und B.")
]

#only("2")[
#voiceover("Um diese Matrizen zu multiplizieren, berechnen wir jedes Element der resultierenden Matrix C. Denke daran, dass das Ergebnis die gleiche Anzahl von Zeilen wie A und die gleiche Anzahl von Spalten wie B haben wird.")
]

#only("3")[
#voiceover("Beginnen wir mit dem Element oben links in C. Wir multiplizieren die erste Zeile von A mit der ersten Spalte von B. Das ist 2 mal 1, plus 1 mal 5, was 7 ergibt.")
]

#only("4")[
#voiceover("Für das Element oben rechts multiplizieren wir die erste Zeile von A mit der zweiten Spalte von B. Das ist 2 mal 4, plus 1 mal 2, was 10 ergibt.")
]

#only("5")[
#voiceover("Gehen wir zum Element unten links über, multiplizieren wir die zweite Zeile von A mit der ersten Spalte von B. Das ist 0 mal 1, plus 3 mal 5, was 15 ergibt.")
]

#only("6")[
#voiceover("Schließlich multiplizieren wir für das Element unten rechts die zweite Zeile von A mit der zweiten Spalte von B. Das ist 0 mal 4, plus 3 mal 2, was 6 ergibt.")
]

#only("7")[
#voiceover("Und da haben wir es! Die resultierende Matrix C ist 7, 10 in der ersten Zeile und 15, 6 in der zweiten Zeile. Gut gemacht beim Lösen dieses Matrixmultiplikationsproblems!")
]
]