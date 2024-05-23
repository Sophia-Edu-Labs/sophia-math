#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse einer Matrix]
#v(40pt)
#only("1-")[Gegeben: $mat(1, 2; 3, 4)$]
#v(20pt)
#only("2-")[Ziel: Finde die Inverse der Matrix]
#only("1")[
#voiceover("Nicht ganz. Lassen Sie uns die richtige Lösung überprüfen und die Inverse der Matrix mit den Elementen 1, 2, 3 und 4 finden.")
]
#only("2")[
#voiceover("Unser Ziel ist es, eine Matrix zu finden, die, wenn sie mit der ursprünglichen Matrix multipliziert wird, die Einheitsmatrix ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Berechne den Determinanten]
#v(40pt)
#only("1-")[$ det(mat(1, 2; 3, 4)) = 1 dot 4 - 2 dot 3 $]
#v(20pt)
#only("2-")[$ det(mat(1, 2; 3, 4)) = 4 - 6 = -2 $]
#only("1")[
#voiceover("Zuerst berechnen wir den Determinanten der Matrix. Für eine 2x2-Matrix ist der Determinant das Produkt der Elemente auf der Hauptdiagonale minus das Produkt der Elemente auf der anderen Diagonale.")
]
#only("2")[
#voiceover("Der Determinant ist also 1 mal 4 minus 2 mal 3, was gleich -2 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Adjungierte Matrix]
#v(40pt)
#only("1-")[$ mat(a, b; c, d)^(-1) = 1/det(mat(a, b; c, d)) dot mat(d, -b; -c, a) $]
#v(20pt)
#only("2-")[$ mat(1, 2; 3, 4)^(-1) = -1/2 dot mat(4, -2; -3, 1) $]
#only("1")[
#voiceover("Als nächstes finden wir die adjungierte Matrix. Für eine 2x2-Matrix mit den Elementen a, b, c und d ist die adjungierte Matrix d, -b, -c, a, geteilt durch den Determinanten.")
]
#only("2")[
#voiceover("Angewendet auf unsere Matrix ergibt das -1/2 mal die Matrix mit den Elementen 4, -2, -3 und 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Vereinfachen]
#v(40pt)
#only("1-")[$ mat(1, 2; 3, 4)^(-1) = mat(-2, 1; 1.5, -0.5) $]
#only("1")[
#voiceover("Schließlich vereinfachen wir die Matrix, indem wir jedes Element mit -1/2 multiplizieren. Dies ergibt die Inverse der Matrix mit den Elementen -2, 1, 1.5 und -0.5.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Verifikation]
#v(40pt)
#only("1-")[$ mat(1, 2; 3, 4) dot mat(-2, 1; 1.5, -0.5) = mat(1, 0; 0, 1) $]
#only("1")[
#voiceover("Wir können überprüfen, dass dies tatsächlich die Inverse der Matrix ist, indem wir sie mit der ursprünglichen Matrix multiplizieren. Wie erwartet ergibt dies die Einheitsmatrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Berechne den Determinanten 🧮]
#v(20pt)
#only("2-")[- Finde die adjungierte Matrix 🔄]
#v(20pt)
#only("3-")[- Vereinfachen das Ergebnis ✨]
#v(20pt)
#only("4-")[- Verifiziere durch Multiplikation mit der ursprünglichen Matrix ✅]
#only("1")[
#voiceover("Zusammenfassend haben wir zuerst den Determinanten der Matrix berechnet.")
]
#only("2")[
#voiceover("Dann haben wir die adjungierte Matrix gefunden, indem wir Elemente vertauscht, einige negiert und durch den Determinanten geteilt haben.")
]
#only("3")[
#voiceover("Wir haben das Ergebnis vereinfacht, um die endgültige Inverse der Matrix zu erhalten.")
]
#only("4")[
#voiceover("Und schließlich haben wir das Ergebnis überprüft, indem wir die Inverse der Matrix mit der ursprünglichen Matrix multipliziert haben, was uns die Einheitsmatrix gab.")
]
]