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
$A = mat(1, 0, 2; 3, 1, 4)$ #h(20pt) $B = mat(2, 3; 1, 0; 5, 6)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(?, ?; ?, ?)$
]

#v(20pt)

#only("3-")[
$c_(11) = 1 dot 2 + 0 dot 1 + 2 dot 5 = 2 + 0 + 10 = 12$
]

#only("4-")[
$c_(12) = 1 dot 3 + 0 dot 0 + 2 dot 6 = 3 + 0 + 12 = 15$
]

#only("5-")[
$c_(21) = 3 dot 2 + 1 dot 1 + 4 dot 5 = 6 + 1 + 20 = 26$
]

#only("6-")[
$c_(22) = 3 dot 3 + 1 dot 0 + 4 dot 6 = 9 + 0 + 24 = 33$
]

#v(20pt)

#only("7-")[
$C = mat(12, 15; 26, 33)$
]

#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei Matrizen, A und B. Matrix A ist eine 2x3-Matrix und Matrix B ist eine 3x2-Matrix.")
]

#only("2")[
#voiceover("Wenn wir diese Matrizen multiplizieren, erhalten wir eine neue Matrix C, die die gleiche Anzahl von Zeilen wie A und die gleiche Anzahl von Spalten wie B hat. Also wird C eine 2x2-Matrix sein.")
]

#only("3")[
#voiceover("Lass uns das erste Element von C berechnen, das wir c Index 1 1 nennen. Es ist das Skalarprodukt der ersten Zeile von A und der ersten Spalte von B. Das ist 1 mal 2, plus 0 mal 1, plus 2 mal 5, was 12 ergibt.")
]

#only("4")[
#voiceover("Nun zu c Index 1 2, wir verwenden die erste Zeile von A und die zweite Spalte von B. Das ist 1 mal 3, plus 0 mal 0, plus 2 mal 6, was 15 ergibt.")
]

#only("5")[
#voiceover("Für c Index 2 1 verwenden wir die zweite Zeile von A und die erste Spalte von B. Das ist 3 mal 2, plus 1 mal 1, plus 4 mal 5, was 26 ergibt.")
]

#only("6")[
#voiceover("Schließlich, für c Index 2 2 verwenden wir die zweite Zeile von A und die zweite Spalte von B. Das ist 3 mal 3, plus 1 mal 0, plus 4 mal 6, was 33 ergibt.")
]

#only("7")[
#voiceover("Also ist unser Endergebnis die Matrix C, die der Matrix mit den Elementen 12, 15, 26 und 33 entspricht. Das stimmt mit der Antwort überein, die Du gegeben hast. Gut gemacht!")
]
]