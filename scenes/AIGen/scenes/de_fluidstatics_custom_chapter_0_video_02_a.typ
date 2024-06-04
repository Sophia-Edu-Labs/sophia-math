#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulikheber Problem 🏗️]
#v(40pt)
#only("1-")[
- Gegeben: 
  - Motormasse: $m = 6000$ kg
  - Fläche des Presskolbens: $A = 400$ cm²
- Gesucht: Druck $p$, der benötigt wird, um den Motor zu heben
]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Schauen wir uns an, wie wir das Schritt für Schritt lösen können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die Formel identifizieren 📏]
#v(40pt)
#only("1-")[
- Druckformel: $p = F / A$
  - $p$: Druck (Pa)
  - $F$: Kraft (N)
  - $A$: Fläche (m²)
]
#only("1")[
#voiceover("Zuerst identifizieren wir die Formel für den Druck, die Kraft durch Fläche geteilt ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Die Kraft berechnen 🏋️]
#v(40pt)
#only("1-")[
- Kraft durch Gravitation: $F = m \cdot g$
  - $m$: Masse (kg)
  - $g$: Erdbeschleunigung (9,81 m/s²)
]
#v(20pt)
#only("2-")[
$F = 6000 \cdot 9.81 = 58860$ N
]
#only("1")[
#voiceover("Als nächstes berechnen wir die auf den Motor wirkende Kraft. Dies ist die Kraft aufgrund der Gravitation, die Masse mal Erdbeschleunigung ist.")
]
#only("2")[
#voiceover("Indem wir die Werte einsetzen, erhalten wir eine Kraft von 58.860 Newton.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Flächeneinheiten umrechnen 🔄]
#v(40pt)
#only("1-")[
- Umrechnung von cm² in m²:
]
#v(20pt)
#only("2-")[
$400$ cm² $= 400 \cdot (0.01)^2 = 0.04$ m²
]
#only("1")[
#voiceover("Die Druckformel verwendet die Fläche in Quadratmetern, aber wir haben die Fläche in Quadratzentimetern gegeben. Daher müssen wir umrechnen.")
]
#only("2")[
#voiceover("400 Quadratzentimeter entsprechen 0,04 Quadratmetern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Den Druck berechnen 🎯]
#v(40pt)
#only("1-")[
$p = F / A$
]
#v(20pt)
#only("2-")[
$p = 58860 / 0.04$
]
#v(20pt)
#only("3-")[
$p = 1471500$ Pa
]
#only("1")[
#voiceover("Schließlich können wir den Druck berechnen, indem wir die Kraft durch die Fläche teilen.")
]
#only("2")[
#voiceover("58.860 Newton geteilt durch 0,04 Quadratmeter...")
]
#only("3")[
#voiceover("ergibt 1.471.500 Pascal. Und das ist unsere Antwort!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[
- Druck ist Kraft pro Flächeneinheit
- Einheiten sorgfältig umrechnen
- Gegebene Formeln Schritt für Schritt verwenden
]
#only("1")[
#voiceover("Zusammenfassend: Denke daran, dass Druck Kraft pro Flächeneinheit ist. Achte immer auf die Einheiten und rechne sie gegebenenfalls um. Und wenn du Probleme löst, verwende die gegebenen Formeln und gehe Schritt für Schritt vor.")
]
]