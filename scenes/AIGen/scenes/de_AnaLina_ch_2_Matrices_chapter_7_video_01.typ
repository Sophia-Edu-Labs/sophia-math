#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Inverse einer Matrix]
#v(40pt)
#only("1-")[- Eine Matrix multipliziert mit ihrem Inversen ergibt die Einheitsmatrix]
#v(20pt)
#only("2-")[$ A A^{-1} = A^{-1} A = I $]
#only("1")[
#voiceover("Das Inverse einer Matrix A ist eine andere Matrix A hoch minus 1, so dass, wenn A mit A invers multipliziert wird, das Ergebnis die Einheitsmatrix ist.")
]
#only("2")[
#voiceover("Mit anderen Worten, A mal A invers gleich A invers mal A gleich der Einheitsmatrix I.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 1]
#v(40pt)
#only("1-")[Finde das Inverse von $mat(2, 1; 1, 2)$.]
// Die Problemstellung wird ab Folie 1 gezeigt
#v(20pt)
#only("2-")[Schritt 1: Berechne die Determinante.]
// Schritt 1 wird ab Folie 2 gezeigt
#v(20pt)
#only("3-")[$ det(A) = 2 dot 2 - 1 dot 1 = 3 $]
// Die Berechnung der Determinante wird ab Folie 3 gezeigt
#v(20pt)
#only("4-")[Schritt 2: Finde die Adjunkte-Matrix.]
// Schritt 2 wird ab Folie 4 gezeigt
#v(20pt)
#only("5-")[$ "adj"(A) = mat(2, -1; -1, 2) $]
// Die Adjunkte-Matrix wird ab Folie 5 gezeigt
#v(20pt)
#only("6-")[Schritt 3: Teile die Adjunkte durch die Determinante.]
// Schritt 3 wird ab Folie 6 gezeigt
#v(20pt)
#only("7-")[$ A^(-1) = 1/3 mat(2, -1; -1, 2) = mat(2/3, -1/3; -1/3, 2/3) $]
// Die endgültige Inverse-Matrix wird ab Folie 7 gezeigt
#only("1")[
#voiceover("Lass uns das Inverse der Matrix mit den Elementen 2, 1, 1, 2 finden.")
]
#only("2")[
#voiceover("Der erste Schritt ist, die Determinante der Matrix zu berechnen.")
]
#only("3")[
#voiceover("Die Determinante ist 2 mal 2 minus 1 mal 1, was gleich 3 ist.")
]
#only("4")[
#voiceover("Als nächstes finden wir die Adjunkte-Matrix.")
]
#only("5")[
#voiceover("Die Adjunkte-Matrix hat die Elemente 2, minus 1, minus 1, 2.")
]
#only("6")[
#voiceover("Schließlich teilen wir die Adjunkte-Matrix durch die Determinante.")
]
#only("7")[
#voiceover("Das Inverse ist ein Drittel mal die Adjunkte-Matrix, was die Matrix mit den Elementen zwei Drittel, minus ein Drittel, minus ein Drittel, zwei Drittel ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 2]
#v(40pt)
#only("1-")[Finde das Inverse von $mat(1, 2; 3, 4)$.]
#v(20pt)
#only("2-")[Schritt 1: Berechne die Determinante.]
#v(20pt)
#only("3-")[$ det(A) = 1 dot 4 - 2 dot 3 = -2 $]
#v(20pt)
#only("4-")[Schritt 2: Finde die Adjunkte-Matrix.]
#v(20pt)
#only("5-")[$ "adj"(A) = mat(4, -2; -3, 1) $]
#v(20pt)
#only("6-")[Schritt 3: Teile die Adjunkte durch die Determinante.]
#v(20pt)
#only("7-")[$ A^(-1) = -1/2 mat(4, -2; -3, 1) = mat(-2, 1; 3/2, -1/2) $]
#only("1")[
#voiceover("Nun lass uns das Inverse der Matrix mit den Elementen 1, 2, 3, 4 finden.")
]
#only("2")[
#voiceover("Wieder beginnen wir mit der Berechnung der Determinante.")
]
#only("3")[
#voiceover("Die Determinante ist 1 mal 4 minus 2 mal 3, was gleich minus 2 ist.")
]
#only("4")[
#voiceover("Als nächstes finden wir die Adjunkte-Matrix.")
]
#only("5")[
#voiceover("Die Adjunkte-Matrix hat die Elemente 4, minus 2, minus 3, 1.")
]
#only("6")[
#voiceover("Schließlich teilen wir die Adjunkte-Matrix durch die Determinante.")
]
#only("7")[
#voiceover("Das Inverse ist minus ein Halb mal die Adjunkte-Matrix, was die Matrix mit den Elementen minus 2, 1, drei Halbe, minus ein Halb ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[1. Berechne die Determinante 🧮]
#v(20pt)
#only("2-")[2. Finde die Adjunkte-Matrix 🔄]
#v(20pt)
#only("3-")[3. Teile die Adjunkte durch die Determinante ➗]
#v(20pt)
#only("4-")[$ A^(-1) = 1/"det"(A) "adj"(A) $]
#only("1")[
#voiceover("Zusammenfassend besteht das Finden des Inversen einer Matrix aus drei Schritten.")
]
#only("2")[
#voiceover("Zuerst berechne die Determinante der Matrix.")
]
#only("3")[
#voiceover("Zweitens finde die Adjunkte-Matrix, indem du bestimmte Elemente transponierst und negierst.")
]
#only("4")[
#voiceover("Schließlich teile die Adjunkte-Matrix durch die Determinante, um die Inverse-Matrix zu erhalten.")
]
]