#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Die richtige Antwort ist: ]
#v(20pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) 2i]#only("2-")[#text(fill:green)[a) 2i]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) 4i]#only("3-")[#text(fill:red)[b) 4i]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) 2]#only("4-")[#text(fill:red)[c) 2]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) 4]#only("5-")[#text(fill:red)[d) 4]]

#only("1")[#voiceover("Das ist absolut korrekt! Großartige Arbeit. Lass uns sehen, warum a) 2i die richtige Antwort ist.")]
#only("2")[#voiceover("Die vierte Wurzel von minus 16 ist tatsächlich 2i.")]
#only("3")[#voiceover("4i ist falsch, weil die vierte Wurzel eine Zahl ist, die, wenn sie mit sich selbst viermal multipliziert wird, minus 16 ergibt. 4i hoch vier ergibt 256, nicht minus 16.")]
#only("4")[#voiceover("2 ist auch falsch. Wenn Du 2 hoch vier nimmst, erhältst Du 16, nicht minus 16.")]
#only("5")[#voiceover("Und 4 ist aus dem gleichen Grund falsch. 4 hoch vier ergibt 256, nicht minus 16.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
#v(40pt)
#only("1-")[Um $root(4, -16)$ zu finden:]
#v(20pt)
#only("2-")[1. Erkenne, dass die vierte Wurzel einer negativen Zahl eine komplexe Zahl sein wird 🧮]
#v(20pt)
#only("3-")[2. Finde die vierte Wurzel des Absolutwerts: $root(4, 16) = 2$ ✅]
#v(20pt)
#only("4-")[3. Multipliziere mit $i$: $2 dot i$ 🎯]
#v(20pt)
#only("5-")[4. Daher ist $root(4, -16) = 2i$ 🌟]

#only("1")[#voiceover("Hier ist, wie wir das Schritt für Schritt lösen können:")]
#only("2")[#voiceover("Zuerst müssen wir erkennen, dass die vierte Wurzel einer negativen Zahl zu einer komplexen Zahl führt.")]
#only("3")[#voiceover("Als nächstes finden wir die vierte Wurzel des Absolutwerts von minus 16, also 16. Die vierte Wurzel von 16 ist 2.")]
#only("4")[#voiceover("Nun multiplizieren wir dieses Ergebnis mit i, um das negative Vorzeichen unter der Wurzel zu berücksichtigen.")]
#only("5")[#voiceover("Und da haben wir es! Die vierte Wurzel von minus 16 ist gleich 2i.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Definiere die komplexe Zahl
z = 2j

# Erstelle eine Figur und eine 3D-Achse
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Zeichne die komplexe Zahl
ax.scatter([z.real], [z.imag], [0], color='blue', s=100)

# Setze die Beschriftungen und den Titel
ax.set_xlabel('Reell')
ax.set_ylabel('Imaginär')
ax.set_zlabel('Z')
ax.set_title('Visualisierung von 2i')

# Setze die Grenzen und das Seitenverhältnis
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
ax.set_zlim(-1, 1)
ax.set_box_aspect((3, 3, 0.5))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)

#only("1")[#voiceover("Hier ist eine Visualisierung der komplexen Zahl 2i in der komplexen Ebene.")]
#only("2")[#voiceover("Der reelle Teil ist 0 und der imaginäre Teil ist 2.")]
#only("3")[#voiceover("Also wird 2i durch einen Punkt auf der imaginären Achse dargestellt, zwei Einheiten über dem Ursprung.")]
#only("4")[#voiceover("Dies ist eine großartige Möglichkeit, komplexe Zahlen zu visualisieren und ihre reellen und imaginären Komponenten zu verstehen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Die vierte Wurzel einer negativen Zahl ist eine komplexe Zahl 🧩]
#v(20pt)
#only("2-")[- Um sie zu finden, nimm die vierte Wurzel des Absolutwerts und multipliziere mit $i$ 🎲]
#v(20pt)
#only("3-")[- In diesem Fall ist $root(4, -16) = 2i$ 🎯]
#v(20pt)
#only("4-")[- Die Visualisierung komplexer Zahlen hilft, ihre reellen und imaginären Teile zu verstehen 📈]

#only("1")[#voiceover("Lass uns die wichtigsten Punkte zusammenfassen:")]
#only("2")[#voiceover("Wenn wir die vierte Wurzel einer negativen Zahl finden, erhalten wir immer eine komplexe Zahl. Um sie zu finden, nehmen wir die vierte Wurzel des Absolutwerts und multiplizieren das Ergebnis dann mit i.")]
#only("3")[#voiceover("In diesem speziellen Fall ist die vierte Wurzel von minus 16 gleich 2i.")]
#only("4")[#voiceover("Und schließlich ist die Visualisierung komplexer Zahlen in der komplexen Ebene eine großartige Möglichkeit, ihre reellen und imaginären Komponenten zu verstehen.")]
]