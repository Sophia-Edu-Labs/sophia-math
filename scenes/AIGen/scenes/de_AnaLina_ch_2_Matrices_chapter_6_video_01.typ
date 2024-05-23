#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Inverse]
#v(40pt)
#only("1-")[- Für eine Matrix $A$ wird das Inverse als $A^(-1)$ bezeichnet]
#v(20pt)
#only("2-")[- Eigenschaft: $A dot A^(-1) = I$]
#v(20pt)
#only("3-")[- $I$ ist die Einheitsmatrix]
#only("1")[
#voiceover("Das Inverse einer Matrix A wird als A hoch minus 1 bezeichnet.")
]
#only("2")[
#voiceover("Die wichtigste Eigenschaft des Inversen ist, dass wenn man eine Matrix A mit ihrem Inversen A hoch minus 1 multipliziert, man die Einheitsmatrix erhält.")
]
#only("3")[
#voiceover("Die Einheitsmatrix, bezeichnet als I, ist eine spezielle Matrix mit 1en auf der Hauptdiagonale und 0en anderswo.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachten wir die Matrix $A = mat(2, 1; 1, 2)$]
#v(20pt)
#only("2-")[Das Inverse von $A$ ist $A^(-1) = mat(2/3, -1/3; -1/3, 2/3)$]
#v(20pt)
#only("3-")[Lassen Sie uns die Eigenschaft überprüfen: $A dot A^(-1) = I$]
#only("1")[
#voiceover("Betrachten wir ein Beispiel. Angenommen, wir haben eine Matrix A, die gleich der Matrix mit den Elementen 2, 1 in der ersten Zeile und 1, 2 in der zweiten Zeile ist.")
]
#only("2")[
#voiceover("Das Inverse dieser Matrix A ist die Matrix mit den Elementen 2/3, -1/3 in der ersten Zeile und -1/3, 2/3 in der zweiten Zeile.")
]
#only("3")[
#voiceover("Nun, lassen Sie uns die Eigenschaft überprüfen, dass A multipliziert mit seinem Inversen A hoch minus 1 gleich der Einheitsmatrix ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung]
#v(40pt)
#only("1-")[
$ A dot A^(-1) = mat(2, 1; 1, 2) dot mat(2/3, -1/3; -1/3, 2/3) $
]
#v(20pt)
#only("2-")[
$ = mat(2 dot 2/3 + 1 dot (-1/3), 2 dot (-1/3) + 1 dot 2/3; 
         1 dot 2/3 + 2 dot (-1/3), 1 dot (-1/3) + 2 dot 2/3) $
]
#v(20pt)
#only("3-")[
$ = mat(1, 0; 0, 1) = I $
]
#only("1")[
#voiceover("Wir multiplizieren die Matrix A mit ihrem Inversen A hoch minus 1.")
]
#only("2")[
#voiceover("Durch die Durchführung der Matrixmultiplikation erhalten wir eine neue Matrix, bei der jedes Element die Summe der Produkte der entsprechenden Zeilenelemente von A und der Spaltenelemente des Inversen von A ist.")
]
#only("3")[
#voiceover("Wenn wir diese Matrix vereinfachen, erhalten wir tatsächlich die Einheitsmatrix I, die 1en auf der Hauptdiagonale und 0en anderswo hat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Das Inverse einer Matrix $A$ wird als $A^(-1)$ bezeichnet 🔄]
#v(20pt)
#only("2-")[- Wichtige Eigenschaft: $A dot A^(-1) = I$ ✅]
#v(20pt)
#only("3-")[- $I$ ist die Einheitsmatrix mit 1en auf der Hauptdiagonale, 0en anderswo 🆔]
#only("1")[
#voiceover("Zusammenfassend wird das Inverse einer Matrix A als A hoch minus 1 bezeichnet.")
]
#only("2")[
#voiceover("Die wichtigste Eigenschaft ist, dass wenn man eine Matrix mit ihrem Inversen multipliziert, man die Einheitsmatrix erhält.")
]
#only("3")[
#voiceover("Die Einheitsmatrix hat 1en auf der Hauptdiagonale und 0en anderswo. Es ist eine spezielle Matrix, die andere Matrizen unverändert lässt, wenn sie multipliziert wird.")
]
]