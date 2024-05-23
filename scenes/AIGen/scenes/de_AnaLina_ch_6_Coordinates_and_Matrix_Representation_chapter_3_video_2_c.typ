#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildungen]
#v(40pt)
Um das Bild eines Vektors unter einer linearen Abbildung zu finden, ____ wir die Matrix mit dem Vektor.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) addieren]#only("2-")[#text(fill:red)[a) addieren]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) subtrahieren]#only("3-")[#text(fill:red)[b) subtrahieren]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) multiplizieren]#only("4-")[#text(fill:green)[c) multiplizieren]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) dividieren]#only("5-")[#text(fill:red)[d) dividieren]]
#only("1")[#voiceover("Das ist richtig, großartig! Um das Bild eines Vektors unter einer linearen Abbildung zu finden, multiplizieren wir die Matrix mit dem Vektor.")]
#only("2")[#voiceover("a) addieren ist falsch. Wir addieren die Matrix und den Vektor nicht.")]
#only("3")[#voiceover("b) subtrahieren ist auch falsch. Wir subtrahieren die Matrix und den Vektor ebenfalls nicht.")]
#only("4")[#voiceover("c) multiplizieren ist die richtige Antwort. Wir multiplizieren die Matrix mit dem Vektor, um das Bild zu finden.")]
#only("5")[#voiceover("d) dividieren ist falsch. Division ist in diesem Kontext für Matrizen und Vektoren nicht definiert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Gegeben:
- Lineare Abbildung $T(x, y) = (2x, 3y)$
- Vektor $v = mat(1; 2)$]
#v(20pt)
#only("2-")[Schritt 1: Finde die Matrixdarstellung von $T$]
#v(10pt)
#only("3-")[- $T(x, y) = (2x, 3y)$]
#only("4-")[- $T(mat(1;0)) = mat(2;0)$ und $T(mat(0;1)) = mat(0;3)$]
#only("5-")[- Matrixdarstellung: $mat(2, 0; 0, 3)$]
#v(20pt)
#only("6-")[Schritt 2: Multipliziere die Matrix mit dem Vektor]
#v(10pt)
#only("7-")[- $mat(2, 0; 0, 3) mat(1; 2) = mat(2; 6)$]
#v(20pt)
#only("8-")[Daher ist das Bild von $v$ unter $T$ $mat(2; 6)$. 📐🎯]

#only("1")[#voiceover("Lass uns das Schritt für Schritt lösen. Wir haben eine lineare Abbildung T, definiert durch T von x, y gleich 2x, 3y, und einen Vektor v, der der Spaltenvektor 1, 2 ist.")]
#only("2")[#voiceover("Im ersten Schritt müssen wir die Matrixdarstellung von T finden.")]
#only("3")[#voiceover("Wir wissen, dass T x, y auf 2x, 3y abbildet.")]
#only("4")[#voiceover("Das bedeutet, dass T die Standardbasisvektoren 1, 0 auf 2, 0 und 0, 1 auf 0, 3 abbildet.")]
#only("5")[#voiceover("Daher ist die Matrixdarstellung von T die 2x2-Matrix mit 2, 0 in der ersten Zeile und 0, 3 in der zweiten Zeile.")]
#only("6")[#voiceover("Im zweiten Schritt multiplizieren wir diese Matrix mit dem Vektor v.")]
#only("7")[#voiceover("Die Multiplikation der Matrix 2, 0; 0, 3 mit dem Vektor 1; 2 ergibt den Vektor 2; 6.")]
#only("8")[#voiceover("Und das war's! Das Bild des Vektors 1; 2 unter der linearen Abbildung T ist der Vektor 2; 6.")]
]