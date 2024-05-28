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
#voiceover("Das war leider nicht korrekt. Lass uns Schritt für Schritt durchgehen, wie wir das richtig lösen können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
#only("1-")[- Matrix $A = mat(2, 0; 0, 3)$]
#v(20pt)
#only("2-")[- Vektor $v = mat(1; 2)$]
#only("1")[
#voiceover("Wir haben eine Matrix A gegeben, die eine 2x2-Matrix mit den Elementen 2, 0, 0 und 3 ist.")
]
#only("2")[
#voiceover("Wir haben auch einen Vektor v gegeben, der ein 2x1-Vektor mit den Elementen 1 und 2 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Matrix-Vektor-Multiplikation]
#v(40pt)
#only("1-")[Um das Bild von $v$ unter der linearen Abbildung, die durch $A$ dargestellt wird, zu finden, multiplizieren wir $A$ und $v$:]
#v(20pt)
#only("2-")[$ A v = mat(2, 0; 0, 3) mat(1; 2) $]
#only("1")[
#voiceover("Um das Bild von v unter der linearen Abbildung, die durch A dargestellt wird, zu finden, müssen wir die Matrix A mit dem Vektor v multiplizieren.")
]
#only("2")[
#voiceover("Das bedeutet, dass wir die 2x2-Matrix mit dem 2x1-Vektor multiplizieren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Die Multiplikation durchführen]
#v(40pt)
#only("1-")[$ mat(2, 0; 0, 3) mat(1; 2) = mat(2 dot 1 + 0 dot 2; 0 dot 1 + 3 dot 2) $]
#v(20pt)
#only("2-")[$ = mat(2; 6) $]
#only("1")[
#voiceover("Um die Multiplikation durchzuführen, multiplizieren wir jede Zeile der Matrix mit dem Spaltenvektor und addieren die Ergebnisse.")
]
#only("2")[
#voiceover("Das ergibt einen neuen 2x1-Vektor mit den Elementen 2 und 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ergebnis 📈]
#v(40pt)
#only("1-")[Daher ist das Bild von $v$ unter der linearen Abbildung, die durch $A$ dargestellt wird, $mat(2; 6)$.]
#only("1")[
#voiceover("Daher ist das Bild des Vektors v unter der linearen Abbildung, die durch die Matrix A dargestellt wird, der Vektor 2, 6.")
]
]