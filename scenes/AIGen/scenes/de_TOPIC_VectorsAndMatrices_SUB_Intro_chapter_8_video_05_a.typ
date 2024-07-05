#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrixmultiplikation]
#v(40pt)

#only("1-")[Gegebene Matrizen:]
#v(10pt)
#only("1-")[A = $mat(0, 1; 2, 3)$]
#v(10pt)
#only("1-")[B = $mat(4, 5; 6, 7)$]

#only("1")[
#voiceover("Großartige Arbeit bei der Lösung dieses Matrixmultiplikationsproblems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben zwei Matrizen gegeben: A, eine 2x2-Matrix mit den Elementen 0, 1 in der ersten Zeile und 2, 3 in der zweiten Zeile; und B, eine weitere 2x2-Matrix mit den Elementen 4, 5 in der ersten Zeile und 6, 7 in der zweiten Zeile.")
]

#only("2-")[Ergebnis: $C = A × B = mat(6, 7; 26, 31)$]

#only("2")[
#voiceover("Das Ergebnis der Multiplikation dieser Matrizen ist eine neue 2x2-Matrix C. Lass uns jedes Element von C berechnen.")
]

#only("3-")[$C_(11) = (0 × 4) + (1 × 6) = 0 + 6 = 6$]
#only("3")[
#voiceover("Für das Element in der ersten Zeile und ersten Spalte von C multiplizieren wir die erste Zeile von A mit der ersten Spalte von B. Das ist 0 mal 4 plus 1 mal 6, was 6 ergibt.")
]

#only("4-")[$C_(12) = (0 × 5) + (1 × 7) = 0 + 7 = 7$]
#only("4")[
#voiceover("Für das Element in der ersten Zeile und zweiten Spalte multiplizieren wir die erste Zeile von A mit der zweiten Spalte von B. Das ist 0 mal 5 plus 1 mal 7, was 7 ergibt.")
]

#only("5-")[$C_(21) = (2 × 4) + (3 × 6) = 8 + 18 = 26$]
#only("5")[
#voiceover("Für das Element in der zweiten Zeile und ersten Spalte multiplizieren wir die zweite Zeile von A mit der ersten Spalte von B. Das ist 2 mal 4 plus 3 mal 6, was 26 ergibt.")
]

#only("6-")[$C_(22) = (2 × 5) + (3 × 7) = 10 + 21 = 31$]
#only("6")[
#voiceover("Schließlich multiplizieren wir für das Element in der zweiten Zeile und zweiten Spalte die zweite Zeile von A mit der zweiten Spalte von B. Das ist 2 mal 5 plus 3 mal 7, was 31 ergibt.")
]

#only("7")[
#voiceover("Und da haben wir es! Die resultierende Matrix C ist eine 2x2-Matrix mit den Elementen 6, 7 in der ersten Zeile und 26, 31 in der zweiten Zeile. Gut gemacht, dass Du diese Matrixmultiplikation durchgearbeitet hast!")
]
]