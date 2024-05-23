#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel]
#v(40pt)
#only("1-")[Für eine lineare Abbildung $T: V -> W$ lautet die Dimensionsformel:]
#v(40pt)
#only("-1")[a) $"dim"(V) = "dim"("ker"(T)) - "dim"("im"(T))$]#only("2-")[#text(fill:red)[a) $"dim"(V) = "dim"("ker"(T)) - "dim"("im"(T))$]]
#v(10pt)
#only("-2")[b) $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]#only("3-")[#text(fill:green)[b) $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]]
#v(10pt)
#only("-3")[c) $"dim"(V) = "dim"("ker"(T)) "dim"("im"(T))$]#only("4-")[#text(fill:red)[c) $"dim"(V) = "dim"("ker"(T)) "dim"("im"(T))$]]
#v(10pt)
#only("-4")[d) $"dim"(V) = "dim"("im"(T)) - "dim"("ker"(T))$]#only("5-")[#text(fill:red)[d) $"dim"(V) = "dim"("im"(T)) - "dim"("ker"(T))$]]
#only("1")[#voiceover("Das ist in Ordnung! Schauen wir uns die richtige Lösung an.")]
#only("2")[#voiceover("Option a ist falsch. Die Dimensionsformel subtrahiert nicht die Dimensionen des Kerns und des Bildes.")]
#only("3")[#voiceover("Option b ist tatsächlich die korrekte Dimensionsformel. Sie besagt, dass die Dimension des Definitionsbereichs V der Summe der Dimensionen des Kerns und des Bildes von T entspricht.")]
#only("4")[#voiceover("Option c ist falsch. Die Dimensionsformel multipliziert nicht die Dimensionen des Kerns und des Bildes.")]
#only("5")[#voiceover("Und Option d ist ebenfalls falsch. Sie subtrahiert die Dimensionen in der falschen Reihenfolge.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Gegeben:]
#v(20pt)
- Lineare Abbildung $T: V \\to W$
#v(40pt)
#only("2-")[Schritt 1: Erinnern Sie sich an die Dimensionsformel 📜]
#v(20pt)
- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$
#only("1")[#voiceover("Lassen Sie uns dies Schritt für Schritt lösen. Wir haben eine lineare Abbildung T von V nach W gegeben.")]
#only("2")[#voiceover("Der erste Schritt besteht darin, sich an die Dimensionsformel zu erinnern. Sie besagt, dass die Dimension des Definitionsbereichs V der Summe der Dimensionen des Kerns und des Bildes von T entspricht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Schritt 2: Identifizieren Sie die Komponenten 🔍]
#v(20pt)
- $"dim"(V)$: Dimension des Definitionsbereichs
- $"dim"("ker"(T))$: Dimension des Kerns
- $"dim"("im"(T))$: Dimension des Bildes
#only("1")[#voiceover("Als nächstes identifizieren wir die Komponenten der Formel. dim V ist die Dimension des Definitionsbereichs, dim ker T ist die Dimension des Kerns und dim im T ist die Dimension des Bildes.")]
#v(40pt)
#only("2-")[Daher lautet die korrekte Dimensionsformel:]
#v(20pt)
#text(weight: "bold")[b) $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$ ✅]
#only("2")[#voiceover("Daher ist die korrekte Antwort b. Die Dimension des Definitionsbereichs V entspricht der Summe der Dimensionen des Kerns und des Bildes von T.")]
]