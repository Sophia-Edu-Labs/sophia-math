#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrizen Addieren]
#v(40pt)

#only("1-")[Gegebene Matrizen:]
#v(10pt)
#only("1-")[A = $mat(5, 6; 7, 8)$]
#v(10pt)
#only("1-")[B = $mat(1, 2; 3, 4)$]

#only("2-")[Schritt 1: Entsprechende Elemente addieren]
#v(10pt)
#only("2-")[$mat(5+1, 6+2; 7+3, 8+4)$]

#only("3-")[Schritt 2: Vereinfachen]
#v(10pt)
#only("3-")[$mat(6, 8; 10, 12)$]

#only("1")[
#voiceover("Großartig! Du hast diese Matrizen korrekt addiert. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei Matrizen: A und B. Matrix A ist eine 2x2-Matrix mit den Elementen 5, 6, 7 und 8. Matrix B ist ebenfalls eine 2x2-Matrix mit den Elementen 1, 2, 3 und 4.")
]

#only("2")[
#voiceover("Um diese Matrizen zu addieren, addieren wir die entsprechenden Elemente. Das bedeutet, dass wir die Elemente in derselben Position in jeder Matrix addieren. Also addieren wir 5 und 1, 6 und 2, 7 und 3 und 8 und 4.")
]

#only("3")[
#voiceover("Nach dem Vereinfachen erhalten wir unser Ergebnis: eine neue 2x2-Matrix mit den Elementen 6, 8, 10 und 12. Dies ist in der Tat die richtige Antwort: 6, 8 in der ersten Zeile und 10, 12 in der zweiten Zeile.")
]
]