#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Schauen wir uns an, wie wir das Schritt für Schritt lösen können.]
#only("1")[
#voiceover("Nicht ganz. Gehen wir die Lösung Schritt für Schritt durch, um zu sehen, wie wir zur richtigen Antwort gelangen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[- $T: R^2 -> R^2$]
#v(20pt)
#only("2-")[- $T(mat(x; y)) = mat(x + y; x - y)$]
#v(20pt)
#only("3-")[- Finde $T(mat(3; 4))$]
#only("1")[
#voiceover("Wir haben eine lineare Transformation T gegeben, die vom Vektorraum R 2 nach R 2 abbildet.")
]
#only("2")[
#voiceover("T ist wie folgt definiert: Für einen Vektor (x; y) bildet T ihn auf den Vektor (x plus y; x minus y) ab.")
]
#only("3")[
#voiceover("Unsere Aufgabe ist es, das Ergebnis der Anwendung von T auf den spezifischen Vektor (3; 4) zu finden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Komponenten identifizieren]
#v(40pt)
#only("1-")[- $mat(3; 4) = mat(x; y)$, wobei:]
#v(20pt)
#only("2-")[  - $x = 3$]
#v(10pt)
#only("3-")[  - $y = 4$]
#only("1")[
#voiceover("Zuerst identifizieren wir die Komponenten des Eingangsvektors (3; 4). Wir sehen, dass er der allgemeinen Form (x; y) entspricht, wobei")
]
#only("2")[
#voiceover("x gleich 3 ist, und")
]
#only("3")[
#voiceover("y gleich 4 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Transformation anwenden]
#v(40pt)
#only("1-")[- $T(mat(x; y)) = mat(x + y; x - y)$]
#v(20pt)
#only("2-")[- Ersetze $x = 3$ und $y = 4$:]
#v(10pt)
#only("3-")[  - $T(mat(3; 4)) = mat(3 + 4; 3 - 4)$]
#only("1")[
#voiceover("Als nächstes erinnern wir uns an die Definition der Transformation T: Sie bildet (x; y) auf (x plus y; x minus y) ab.")
]
#only("2")[
#voiceover("Nun können wir die Werte x gleich 3 und y gleich 4 in diese Definition einsetzen.")
]
#only("3")[
#voiceover("Das ergibt T von (3; 4) gleich (3 plus 4; 3 minus 4).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Vereinfachen]
#v(40pt)
#only("1-")[- $T(mat(3; 4)) = mat(3 + 4; 3 - 4)$]
#v(20pt)
#only("2-")[- Vereinfachen:]
#v(10pt)
#only("3-")[  - $T(mat(3; 4)) = mat(7; -1)$]
#only("1")[
#voiceover("Wir haben T von (3; 4) gleich (3 plus 4; 3 minus 4).")
]
#only("2")[
#voiceover("Nun können wir diesen Ausdruck vereinfachen.")
]
#only("3")[
#voiceover("3 plus 4 ergibt 7, und 3 minus 4 ergibt minus 1. Also erhalten wir T von (3; 4) gleich (7; minus 1).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ergebnis 🎯]
#v(40pt)
#only("1-")[Daher ist $T(mat(3; 4)) = mat(7; -1)$.]
#only("1")[
#voiceover("Daher ist das Ergebnis der Anwendung der linearen Transformation T auf den Vektor (3; 4) der Vektor (7; minus 1). Großartige Arbeit beim schrittweisen Lösen dieses Problems!")
]
]