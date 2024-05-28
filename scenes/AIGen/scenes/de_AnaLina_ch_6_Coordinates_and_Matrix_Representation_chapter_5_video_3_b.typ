#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Lass uns Schritt für Schritt sehen, wie wir das lösen können.]
#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns gemeinsam Schritt für Schritt die Lösung durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Finde die Basiswechselmatrix]
#v(40pt)
#only("1-")[- Neue Basis: $B = (mat(1; 1), mat(1; -1))$]
#v(20pt)
#only("2-")[- Basiswechselmatrix: $P = mat(1, 1; 1, -1)$]
#only("1")[
#voiceover("Zuerst müssen wir die Basiswechselmatrix finden. Die neue Basis ist gegeben als B gleich den Vektoren eins, eins und eins, minus eins.")
]
#only("2")[
#voiceover("Um die Basiswechselmatrix zu finden, setzen wir diese Basisvektoren einfach als Spalten. Also ist die Basiswechselmatrix P die Matrix mit den Spalten eins, eins und eins, minus eins.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Finde die Originalmatrix]
#v(40pt)
#only("1-")[- Lineare Abbildung: $T(x, y) = (2x, 3y)$]
#v(20pt)
#only("2-")[- Originalmatrix: $A = mat(2, 0; 0, 3)$]
#only("1")[
#voiceover("Als nächstes müssen wir die Matrixdarstellung der linearen Abbildung T bezüglich der Standardbasis finden. T von x, y ist gleich zwei x, drei y.")
]
#only("2")[
#voiceover("Das bedeutet, dass die Originalmatrix A die Diagonalmatrix mit den Einträgen zwei und drei auf der Diagonale ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Wende die Basiswechsel-Formel an]
#v(40pt)
#only("1-")[- Formel: $A_B = P^(-1) A P$]
#v(20pt)
#only("2-")[- Berechne: $mat(1, 1; 1, -1)^(-1) mat(2, 0; 0, 3) mat(1, 1; 1, -1)$]
#only("1")[
#voiceover("Schließlich wenden wir die Basiswechsel-Formel an. Die Matrixdarstellung A unter B bezüglich der neuen Basis B ist gegeben durch P invers mal A mal P, wobei P die Basiswechselmatrix ist.")
]
#only("2")[
#voiceover("Also müssen wir das Produkt aus dem Inversen der Matrix eins, eins, eins, minus eins, dann der Matrix zwei, null, null, drei und dann wieder der Matrix eins, eins, eins, minus eins berechnen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Berechne das Ergebnis 🧮]
#v(40pt)
#only("1-")[- $mat(1, 1; 1, -1)^(-1) mat(2, 0; 0, 3) mat(1, 1; 1, -1)$]
#v(20pt)
#only("2-")[- $= mat(0.5, 0.5; 0.5, -0.5) mat(2, 0; 0, 3) mat(1, 1; 1, -1)$]
#v(20pt)
#only("3-")[- $= mat(2.5, 0.5; 0.5, 1.5)$]
#only("1")[
#voiceover("Lass uns das Schritt für Schritt berechnen.")
]
#only("2")[
#voiceover("Zuerst berechnen wir das Inverse der Basiswechselmatrix. Dies ist die Matrix null Komma fünf, null Komma fünf, null Komma fünf, minus null Komma fünf.")
]
#only("3")[
#voiceover("Durch Multiplikation dieser Matrizen erhalten wir das Endergebnis: die Matrix zwei Komma fünf, null Komma fünf, null Komma fünf, eins Komma fünf.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Die Matrixdarstellung von $T$ bezüglich der neuen Basis $B$ ist:]
#v(20pt)
#only("2-")[$A_B = mat(2.5, 0.5; 0.5, 1.5)$]
#only("1")[
#voiceover("Abschließend ist die Matrixdarstellung der linearen Abbildung T bezüglich der neuen Basis B")
]
#only("2")[
#voiceover("die Matrix zwei Komma fünf, null Komma fünf, null Komma fünf, eins Komma fünf. Großartige Arbeit bei der Lösung dieses Problems!")
]
]