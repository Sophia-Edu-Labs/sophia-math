#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrixdarstellung mit Basiswechsel]
#v(40pt)
#only("1-")[Um die Matrixdarstellung einer linearen Abbildung bezüglich einer neuen Basis zu finden, müssen wir die ursprüngliche Matrix mit der Basiswechselmatrix ____ .]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[c) multiplizieren]#only("2-")[#text(fill:green)[c) multiplizieren]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[a) addieren]#only("3-")[#text(fill:red)[a) addieren]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[b) subtrahieren]#only("4-")[#text(fill:red)[b) subtrahieren]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) invertieren]#only("5-")[#text(fill:red)[d) invertieren]]
#v(40pt)

#only("1")[#voiceover("Fantastisch! Du hast absolut recht. Schauen wir uns genauer an, warum das so ist.")]
#only("2")[#voiceover("Um die Matrixdarstellung einer linearen Abbildung bezüglich einer neuen Basis zu finden, müssen wir tatsächlich die ursprüngliche Matrix mit der Basiswechselmatrix multiplizieren.")]
#only("3")[#voiceover("Das Addieren der Matrizen würde uns nicht die richtige Transformation liefern.")]
#only("4")[#voiceover("Ebenso würde das Subtrahieren der Matrizen nicht das gewünschte Ergebnis liefern.")]
#only("5")[#voiceover("Und obwohl das Invertieren von Matrizen eine wichtige Operation ist, brauchen wir es hier nicht für den Basiswechsel.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Betrachten wir eine lineare Abbildung $T(x, y) = (2x, 3y)$ und eine neue Basis $B = (mat(1; 1), mat(1; -1))$.]
#v(20pt)
#only("2-")[1. Finde die Matrixdarstellung von $T$ bezüglich der Standardbasis:]
#v(10pt)
#only("2-")[   $[T]_"standard" = mat(2, 0; 0, 3)$]
#v(20pt)
#only("3-")[2. Finde die Basiswechselmatrix von der Standardbasis zu $B$:]
#v(10pt)
#only("3-")[   $[I]_"standard"^B = mat(1, 1; 1, -1)$]

#only("1")[#voiceover("Gehen wir ein konkretes Beispiel durch, um unser Verständnis zu festigen.")]
#only("2")[#voiceover("Zuerst finden wir die Matrixdarstellung von T bezüglich der Standardbasis. Dies ist einfach die Matrix mit den Koeffizienten der linearen Abbildung auf der Diagonale.")]
#only("3")[#voiceover("Als nächstes finden wir die Basiswechselmatrix von der Standardbasis zu B. Diese Matrix hat die neuen Basisvektoren als Spalten.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung (Fortsetzung)]
#v(40pt)
#only("1-")[3. Multipliziere die Matrizen, um die Matrixdarstellung von $T$ bezüglich $B$ zu erhalten:]
#v(10pt)
#only("1-")[   $[T]_B = [I]_"standard"^B [T]_"standard" [I]_B^"standard"$]
#v(10pt)
#only("1-")[   $= mat(1, 1; 1, -1) mat(2, 0; 0, 3) mat(0.5, 0.5; 0.5, -0.5)$]
#v(10pt)
#only("1-")[   $= mat(2.5, 0.5; 0.5, 1.5)$]

#only("1")[#voiceover("Nun multiplizieren wir die Basiswechselmatrix, die ursprüngliche Matrixdarstellung und die Inverse der Basiswechselmatrix.")]
#only("2")[#voiceover("Und da haben wir es! Die resultierende Matrix ist die Darstellung von T bezüglich der neuen Basis B.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Basiswechsel beinhaltet Matrixmultiplikation 🧮]
#v(20pt)
#only("2-")[- Ursprüngliche Matrix wird durch Basiswechselmatrix transformiert 🔄]
#v(20pt)
#only("3-")[- Neue Matrix repräsentiert die lineare Abbildung in der neuen Basis 🆕]
#v(20pt)
#only("4-")[Großartige Arbeit! Du hast ein wichtiges Konzept der linearen Algebra gemeistert. 🌟]

#only("1")[#voiceover("Zusammenfassend lässt sich sagen, dass der Basiswechsel einer linearen Abbildung Matrixmultiplikation beinhaltet.")]
#only("2")[#voiceover("Die ursprüngliche Matrixdarstellung wird durch die Basiswechselmatrix transformiert.")]
#only("3")[#voiceover("Die resultierende neue Matrix repräsentiert die gleiche lineare Abbildung, aber jetzt bezüglich der neuen Basis.")]
#only("4")[#voiceover("Fantastische Arbeit beim Erfassen dieses wichtigen Konzepts. Mach weiter so in deiner linearen Algebra-Reise!")]
]