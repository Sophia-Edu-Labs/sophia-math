#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#text(size: 24pt)[Das ist die korrekte Matrixdarstellung der linearen Abbildung $T$!]
#v(40pt)
#text(size: 24pt)[Lass uns Schritt für Schritt sehen, wie wir zu dieser Lösung gelangen. 📝]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam die Schritte durchgehen, um die richtige Matrixdarstellung der linearen Abbildung T zu finden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[- Lineare Abbildung $T: RR^2 -> RR^2$]
#v(20pt)
#only("2-")[- Definiert durch $T(x, y) = (2x, 3y)$]
#only("1")[
#voiceover("Es ist eine lineare Abbildung T von R 2 nach R 2 gegeben.")
]
#only("2")[
#voiceover("Diese Abbildung ist definiert durch T von x, y gleich 2x, 3y.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Basisvektoren identifizieren]
#v(40pt)
#only("1-")[- Standardbasisvektoren in $RR^2$: $mat(1;0)$ und $mat(0;1)$]
#v(20pt)
#only("2-")[- Wende $T$ auf diese Basisvektoren an]
#only("1")[
#voiceover("Um die Matrixdarstellung zu finden, beginnen wir mit den Standardbasisvektoren in R 2, die 1, 0 und 0, 1 sind.")
]
#only("2")[
#voiceover("Dann wenden wir die lineare Abbildung T auf diese Basisvektoren an.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Wende $T$ auf die Basisvektoren an]
#v(40pt)
#only("1-")[- $T(mat(1;0)) = mat(2;0)$]
#v(20pt)
#only("2-")[- $T(mat(0;1)) = mat(0;3)$]
#only("1")[
#voiceover("T von 1, 0 ist gleich 2 mal 1, 3 mal 0, was zu 2, 0 vereinfacht wird.")
]
#only("2")[
#voiceover("Ähnlich ist T von 0, 1 gleich 2 mal 0, 3 mal 1, was zu 0, 3 vereinfacht wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Die Matrix bilden]
#v(40pt)
#only("1-")[- Die Spalten der Matrix sind die transformierten Basisvektoren]
#v(20pt)
#only("2-")[- $mat(T(mat(1;0)), T(mat(0;1))) = mat(2, 0; 0, 3)$]
#only("1")[
#voiceover("Die Spalten der Matrixdarstellung sind die transformierten Basisvektoren.")
]
#only("2")[
#voiceover("Also ist die Matrixdarstellung von T die Matrix mit den Spalten 2, 0 und 0, 3, was die Matrix 2, 0; 0, 3 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Die Matrixdarstellung der linearen Abbildung $T(x, y) = (2x, 3y)$ ist:]
#v(20pt)
#only("2-")[$mat(2, 0; 0, 3)$]
#only("1")[
#voiceover("Abschließend ist die Matrixdarstellung der linearen Abbildung T von x, y gleich 2x, 3y:")
]
#only("2")[
#voiceover("die Matrix 2, 0; 0, 3. Großartige Arbeit bei der Lösung dieses Problems!")
]
]