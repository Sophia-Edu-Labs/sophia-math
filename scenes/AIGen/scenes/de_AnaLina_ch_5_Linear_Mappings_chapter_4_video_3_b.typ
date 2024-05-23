#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Schauen wir uns an, wie wir dies Schritt für Schritt lösen können.]
#only("1")[
#voiceover("Großartige Arbeit! Das ist absolut korrekt. Lassen Sie uns nun Schritt für Schritt die Lösung durchgehen, um zu verstehen, wie wir zu dieser Antwort gekommen sind.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
#only("1-")[- $T: R^3 -> R^2$]
#v(20pt)
#only("2-")[- $"dim"("ker"(T)) = 1$]
#only("1")[
#voiceover("Es ist eine lineare Transformation T von R 3 nach R 2 gegeben.")
]
#only("2")[
#voiceover("Uns wird auch mitgeteilt, dass die Dimension des Kerns von T 1 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel]
#v(40pt)
#only("1-")[- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
#v(20pt)
#only("2-")[- Hier, $V = R^3$, also $"dim"(V) = 3$]
#only("1")[
#voiceover("Um die Dimension des Bildes von T zu finden, können wir die Dimensionsformel verwenden. Sie besagt, dass die Dimension des Definitionsbereichs V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]
#only("2")[
#voiceover("In diesem Fall ist der Definitionsbereich V R 3, also ist die Dimension von V 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösen]
#v(40pt)
#only("1-")[- $3 = 1 + "dim"("im"(T))$]
#v(20pt)
#only("2-")[- $"dim"("im"(T)) = 3 - 1 = 2$]
#only("1")[
#voiceover("Indem wir die gegebenen Werte in die Formel einsetzen, erhalten wir 3 gleich 1 plus die Dimension des Bildes von T.")
]
#only("2")[
#voiceover("Wenn wir die Dimension des Bildes von T berechnen, erhalten wir 3 minus 1, was 2 ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Antwort]
#v(40pt)
#only("1-")[- $"dim"("im"(T)) = 2$ 📐]
#only("1")[
#voiceover("Daher beträgt die Dimension des Bildes von T 2. Großartige Arbeit bei der Lösung dieses Problems!")
]
]