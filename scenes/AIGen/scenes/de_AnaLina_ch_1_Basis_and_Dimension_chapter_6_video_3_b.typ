#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Nicht ganz. Gehen wir die richtige Lösung Schritt für Schritt durch.")
]
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("2-")[- Vektor: $mat(3; 4)$]
#v(20pt)
#only("3-")[- Neue Basis: $mat(1; 1), mat(1; -1)$]
#only("2")[
#voiceover("Uns wird der Vektor (3; 4) gegeben...")
]
#only("3")[
#voiceover("...und die neuen Basisvektoren (1; 1) und (1; -1).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise]
#v(40pt)
#only("1-")[- Verwendung der Basiswechselmatrix]
#v(20pt)
#only("2-")[- Lineares System lösen]
#only("1")[
#voiceover("Um die Koordinaten bezüglich der neuen Basis zu finden, verwenden wir die Basiswechselmatrix.")
]
#only("2")[
#voiceover("Wir stellen ein lineares System auf und lösen es für die Koordinaten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[Basiswechselmatrix: $mat(1, 1; 1, -1)$]
#v(20pt)
#only("2-")[Lineares System: $mat(1, 1; 1, -1) mat(x; y) = mat(3; 4)$]
#v(20pt)
#only("3-")[Lösung:]
#only("4-")[$ mat(1, 1; 1, -1) mat(x; y) = mat(3; 4) $]
#only("5-")[$ mat(x + y; x - y) = mat(3; 4) $]
#only("6-")[$ x + y = 3 $]
#only("7-")[$ x - y = 4 $]

#only("1")[
#voiceover("Zuerst bilden wir die Basiswechselmatrix, indem wir die neuen Basisvektoren als Spalten verwenden.")
]
#only("2")[
#voiceover("Als nächstes stellen wir das lineare System auf, indem wir die Basiswechselmatrix mit dem Vektor der unbekannten Koordinaten multiplizieren und mit dem gegebenen Vektor gleichsetzen.")
]
#only("3")[
#voiceover("Nun lösen wir dieses System Schritt für Schritt.")
]
#only("4")[
#voiceover("Wir beginnen mit der Matrixgleichung.")
]
#only("5")[
#voiceover("Durch Multiplikation der Matrizen erhalten wir zwei Gleichungen.")
]
#only("6")[
#voiceover("Die erste Gleichung lautet x plus y gleich 3.")
]
#only("7")[
#voiceover("Die zweite Gleichung lautet x minus y gleich 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[Addieren der Gleichungen: $2x = 7$]
#v(20pt)
#only("2-")[$ x = 3.5 $]
#v(20pt)
#only("3-")[Subtrahieren der Gleichungen: $2y = -1$]
#v(20pt)
#only("4-")[$ y = -0.5 $]
#v(20pt)
#only("5-")[Koordinaten: $(3.5, -0.5)$]

#only("1")[
#voiceover("Durch Addieren der Gleichungen eliminieren wir y und erhalten 2x gleich 7.")
]
#only("2")[
#voiceover("Durch Lösen für x erhalten wir x gleich 3.5.")
]
#only("3")[
#voiceover("Durch Subtrahieren der Gleichungen eliminieren wir x und erhalten 2y gleich -1.")
]
#only("4")[
#voiceover("Durch Lösen für y erhalten wir y gleich -0.5.")
]
#only("5")[
#voiceover("Daher sind die Koordinaten des Vektors (3; 4) bezüglich der neuen Basis (1; 1), (1; -1) (3.5, -0.5).")
]
]