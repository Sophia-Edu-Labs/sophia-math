#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten in Vektorräumen]
#v(40pt)
Was identifizieren Koordinaten eindeutig in einem Vektorraum?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Eine Linie]#only("2-")[#text(fill:red)[a) Eine Linie]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Ein Punkt]#only("3-")[#text(fill:green)[b) Ein Punkt]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Eine Ebene]#only("4-")[#text(fill:red)[c) Eine Ebene]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Ein Vektor]#only("5-")[#text(fill:red)[d) Ein Vektor]]
#v(40pt)

#only("1")[#voiceover("Großartig! Du hast die richtige Antwort ausgewählt.")]
// Sehr kurz über a sprechen und warum es falsch ist
#only("2")[#voiceover("a) Eine Linie ist falsch. Koordinaten identifizieren nicht eindeutig eine Linie in einem Vektorraum.")]
// Sehr kurz über b sprechen und warum es korrekt ist
#only("3")[#voiceover("b) Ein Punkt ist die richtige Antwort. Koordinaten identifizieren eindeutig einen bestimmten Punkt in einem Vektorraum.")]
// Sehr kurz über c sprechen und warum es falsch ist  
#only("4")[#voiceover("c) Eine Ebene ist falsch. Obwohl eine Ebene mit Koordinaten beschrieben werden kann, identifizieren Koordinaten nicht eindeutig eine Ebene.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("d) Ein Vektor ist falsch. Obwohl Vektoren Koordinaten haben, identifizieren Koordinaten allein nicht eindeutig einen Vektor, da Vektoren auch Richtung und Größe haben.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Lass uns das Schritt für Schritt verstehen:]
#v(20pt)
#only("2-")[- In einem Vektorraum hat jeder Punkt ein einzigartiges Koordinatenset 📍]
#only("3-")[- Diese Koordinaten sind die Koeffizienten der Basisvektoren 📏]
#only("4-")[- Zum Beispiel in $RR^2$ mit Standardbasis $mat(1;0), mat(0;1)$:]
#only("5-")[  - Der Punkt $mat(2;3)$ hat die Koordinaten $(2,3)$ 🔢]
#only("6-")[  - Das liegt daran, dass $2 dot mat(1;0) + 3 dot mat(0;1) = mat(2;3)$]
#only("7-")[- Also identifizieren Koordinaten eindeutig einen Punkt im Vektorraum ✅]
#v(40pt)

#only("1")[#voiceover("Lass uns das Schritt für Schritt aufschlüsseln, um zu verstehen, warum Koordinaten einen Punkt in einem Vektorraum eindeutig identifizieren.")]
#only("2")[#voiceover("Erstens, erinnere dich daran, dass in einem Vektorraum jeder Punkt ein einzigartiges Koordinatenset hat.")]
#only("3")[#voiceover("Diese Koordinaten sind tatsächlich die Koeffizienten der Basisvektoren, wenn wir den Punkt als Linearkombination der Basisvektoren schreiben.")]
#only("4")[#voiceover("Zum Beispiel, betrachten wir die reale Ebene R 2 mit den Standardbasisvektoren 1, 0 und 0, 1.")]
#only("5")[#voiceover("Der Punkt 2, 3 in R 2 hat die Koordinaten 2 und 3.")]
#only("6")[#voiceover("Das liegt daran, dass wenn wir 2, 3 als Linearkombination der Basisvektoren schreiben, erhalten wir 2 mal 1, 0 plus 3 mal 0, 1, was gleich 2, 3 ist.")]
#only("7")[#voiceover("Daher sehen wir, dass Koordinaten einen Punkt im Vektorraum eindeutig identifizieren, da jeder Punkt eine einzigartige Darstellung in Bezug auf die Basisvektoren hat.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Define the basis vectors
v1 = [1, 0]
v2 = [0, 1]

# Define the point
point = [2, 3]

# Plot the basis vectors
ax.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(1, 0)')
ax.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='g', label='(0, 1)')

# Plot the point
ax.scatter(point[0], point[1], color='b', label='(2, 3)')

# Add grid and legend
ax.grid(True)
ax.legend()

# Set equal aspect ratio
ax.set_aspect('equal')

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist eine Visualisierung:]
#v(20pt)
#only("2-")[- Die roten und grünen Pfeile sind die Basisvektoren $mat(1;0)$ und $mat(0;1)$ 🔴🟢]
#only("3-")[- Der blaue Punkt ist der Punkt mit den Koordinaten $(2,3)$ 🔵]
#only("4-")[- Die Koordinaten $(2,3)$ identifizieren diesen Punkt eindeutig im Vektorraum 🎯]

#only("1")[#voiceover("Lass uns dieses Konzept visualisieren, um es klarer zu machen.")]
#only("2")[#voiceover("In diesem Diagramm repräsentieren die roten und grünen Pfeile die Standardbasisvektoren 1, 0 und 0, 1.")]
#only("3")[#voiceover("Der blaue Punkt repräsentiert den Punkt mit den Koordinaten 2, 3.")]
#only("4")[#voiceover("Wie wir sehen können, identifizieren die Koordinaten 2, 3 diesen spezifischen Punkt im Vektorraum eindeutig. Kein anderer Punkt hat diese gleichen Koordinaten.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Zusammenfassend:]
#v(20pt)
#only("2-")[- Koordinaten identifizieren Punkte in einem Vektorraum eindeutig 📍]
#only("3-")[- Sie sind die Koeffizienten der Basisvektoren 📏]
#only("4-")[- Jeder Punkt hat ein einzigartiges Koordinatenset 🔢]
#only("5-")[Großartige Arbeit beim Verständnis dieses wichtigen Konzepts! 🌟]

#only("1")[#voiceover("Lass uns zusammenfassen, was wir gelernt haben.")]
#only("2")[#voiceover("Koordinaten identifizieren Punkte in einem Vektorraum eindeutig.")]
#only("3")[#voiceover("Diese Koordinaten sind die Koeffizienten der Basisvektoren, wenn wir den Punkt als Linearkombination der Basisvektoren schreiben.")]
#only("4")[#voiceover("Jeder Punkt im Vektorraum hat ein einzigartiges Koordinatenset.")]
#only("5")[#voiceover("Großartige Arbeit beim Verständnis dieses grundlegenden Konzepts der linearen Algebra! Mach weiter so.")]
]