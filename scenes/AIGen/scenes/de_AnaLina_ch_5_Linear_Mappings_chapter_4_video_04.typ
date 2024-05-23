#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Lassen Sie uns die Dimensionsformel für lineare Abbildungen rekapitulieren.")
]
#text(size: 30pt, weight: "bold")[Dimensionsformel 📏]
// Der Titel "Dimensionsformel" mit einem Lineal-Emoji wird auf dieser Folie angezeigt
#v(40pt)

#only("2")[
#voiceover("Für eine lineare Abbildung T vom Vektorraum V in den Vektorraum W besagt die Dimensionsformel, dass die Dimension von V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]
#only("2-")[$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
// Die Dimensionsformel wird ab Folie 2 angezeigt

#v(40pt)

#only("3")[
#voiceover("Hier ist der Kern von T, bezeichnet als ker T, die Menge aller Vektoren v in V, sodass T von v gleich dem Nullvektor ist.")
]
#only("3-")[- $"ker"(T) = \{v ∈ V | T(v) = 0\}$ 🎯]
// Die Definition des Kerns wird ab Folie 3 angezeigt, mit einem Ziel-Emoji

#v(20pt)

#only("4")[
#voiceover("Und das Bild von T, bezeichnet als im T, ist die Menge aller Vektoren w in W, sodass w gleich T von v für einen Vektor v in V ist.")
]
#only("4-")[- $"im"(T) = \{w ∈ W | w = T(v) "für einige" v ∈ V\}$ 📸]
// Die Definition des Bildes wird ab Folie 4 angezeigt, mit einem Kamera-Emoji

#v(40pt)

#only("5")[
#voiceover("Diese Formel hilft uns, die Beziehung zwischen den Dimensionen des Definitionsbereichs, des Kerns und des Bildes einer linearen Abbildung zu verstehen.")
]
#only("5-")[🧩 Bezieht Dimensionen von Definitionsbereich, Kern und Bild ein]
// Ein Punkt über die Formel, die Dimensionen in Beziehung setzt, wird ab Folie 5 angezeigt, mit einem Puzzleteil-Emoji

]

#slide()[
#only("1")[
#voiceover("Lassen Sie uns dies mit einem Beispiel veranschaulichen.")
]
#text(size: 30pt, weight: "bold")[Beispiel 🌐]
// Der Titel "Beispiel" mit einem Globus-Emoji wird auf dieser Folie angezeigt
#v(40pt)

#only("2")[
#voiceover("Betrachten Sie eine lineare Abbildung T von R 4 nach R 3 mit der Dimension des Kerns von T gleich 2.")
]
#only("2-")[- $T: ℝ^4 -> ℝ^3$ mit $"dim"("ker"(T)) = 2$]
// Das Beispiel-Setup wird ab Folie 2 angezeigt

#v(20pt)

#only("3")[
#voiceover("Mit der Dimensionsformel haben wir die Dimension von R 4 gleich der Dimension des Kerns von T plus der Dimension des Bildes von T.")
]
#only("3-")[$ "dim"(ℝ^4) = "dim"("ker"(T)) + "dim"("im"(T)) $]
// Die Dimensionsformel, angewendet auf das Beispiel, wird ab Folie 3 angezeigt

#v(20pt)

#only("4")[
#voiceover("Wir wissen, dass die Dimension von R 4 gleich 4 ist und die Dimension des Kerns von T als 2 gegeben ist. Wenn wir diese Werte einsetzen, erhalten wir 4 gleich 2 plus der Dimension des Bildes von T.")
]
#only("4-")[$ 4 = 2 + "dim"("im"(T)) $]
// Das Einsetzen in die Formel wird ab Folie 4 angezeigt

#v(20pt)

#only("5")[
#voiceover("Wenn wir die Dimension des Bildes von T berechnen, stellen wir fest, dass sie 2 sein muss.")
]
#only("5-")[$ "dim"("im"(T)) = 4 - 2 = 2 $]
// Die Lösung für die Dimension des Bildes wird ab Folie 5 angezeigt

#v(40pt)

#only("6")[
#voiceover("Dieses Beispiel zeigt, wie uns die Dimensionsformel hilft, die Dimension des Bildes zu finden, wenn wir die Dimensionen des Definitionsbereichs und des Kerns kennen.")
]
#only("6-")[💡 Hilft, unbekannte Dimensionen zu finden]
// Ein Punkt über die Formel, die hilft, unbekannte Dimensionen zu finden, wird ab Folie 6 angezeigt, mit einem Glühbirnen-Emoji

]

#slide()[
#only("1")[
#voiceover("Zusammenfassend ist die Dimensionsformel für lineare Abbildungen ein mächtiges Werkzeug in der linearen Algebra.")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
// Der Titel "Zusammenfassung" mit einem Klappen-Emoji wird auf dieser Folie angezeigt
#v(40pt)

#only("2-")[- Bezieht Dimensionen von Definitionsbereich, Kern und Bild ein 🧩]
// Der Punkt über die Formel, die Dimensionen in Beziehung setzt, wird ab Folie 2 angezeigt, mit einem Puzzleteil-Emoji

#v(20pt)

#only("3-")[- Hilft, unbekannte Dimensionen zu finden 💡]
// Der Punkt über die Formel, die hilft, unbekannte Dimensionen zu finden, wird ab Folie 3 angezeigt, mit einem Glühbirnen-Emoji

#v(20pt)

#only("4-")[- Wichtige Formel: $ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $ 🔑]
// Die Dimensionsformel wird ab Folie 4 angezeigt, mit einem Schlüssel-Emoji

#v(40pt)

#only("5")[
#voiceover("Es ist eine wichtige Formel, die die Dimensionen des Definitionsbereichs, des Kerns und des Bildes einer linearen Abbildung in Beziehung setzt und uns hilft, unbekannte Dimensionen zu finden, wenn wir Teilinformationen haben.")
]

#only("6")[
#voiceover("Damit beenden wir unsere Rekapitulation der Dimensionsformel für lineare Abbildungen.")
]

]