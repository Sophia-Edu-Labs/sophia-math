#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rückblick: Oberfläche von Quadern 📦]
#v(40pt)
#only("1-")[- Quader sind 3D-Formen mit 6 rechteckigen Flächen 🧊]
#only("2-")[- Die Oberfläche ist die Summe der Flächen aller Seiten 🔢]
#only("3-")[- Oft müssen wir fehlende Dimensionen finden 🔍]
#only("1")[
#voiceover("Lass uns das Konzept der Oberfläche von Quadern wiederholen. Quader sind dreidimensionale Formen mit sechs rechteckigen Flächen.")
]
#only("2")[
#voiceover("Die Oberfläche eines Quaders ist die Summe der Flächen aller Seiten.")
]
#only("3")[
#voiceover("In vielen Aufgaben müssen wir eine fehlende Dimension finden, wenn die Oberfläche und zwei andere Dimensionen gegeben sind. Lass uns überprüfen, wie wir das angehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Problemstellung]
#v(20pt)
#only("1-")[Gegeben:
- Oberfläche ($"SA"$)
- Länge ($l$)
- Breite ($w$)
Gesucht:
- Höhe ($h$)]
#v(20pt)
#only("2-")[Formel: $"SA" = 2(l w + l h + w h)$]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides
sides = [
    [0, 1], [1, 2], [2, 3], [3, 0],  # Bottom face
    [4, 5], [5, 6], [6, 7], [7, 4],  # Top face
    [0, 4], [1, 5], [2, 6], [3, 7]   # Vertical edges
]

# Plot sides
for s in sides:
    ax.plot3D(*zip(*[vertices[s[0]], vertices[s[1]]]), color='blue')

# Label dimensions
ax.text(l/2, -0.5, 0, 'l', fontsize=14)
ax.text(l+0.5, w/2, 0, 'w', fontsize=14)
ax.text(l+0.5, w+0.5, h/2, 'h', fontsize=14)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid Dimensions')
plt.show()

```,
width: 360pt),
caption: [Quader mit Dimensionen],
)
]
]
]
#only("1")[
#voiceover("In unserem Problem sind die Oberfläche eines Quaders sowie seine Länge und Breite gegeben. Unsere Aufgabe ist es, die fehlende Höhe zu finden.")
]
#only("2")[
#voiceover("Wir verwenden die Formel für die Oberfläche eines Quaders, die 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe ist.")
]
#only("3")[
#voiceover("Hier ist eine visuelle Darstellung eines Quaders mit beschrifteten Dimensionen. Wir kennen l und w und müssen h berechnen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Lösung der fehlenden Dimension]
#v(20pt)
#only("1-")[1. Beginne mit der Formel:
   $"SA" = 2(l w + l h + w h)$]
#only("2-")[2. Setze die bekannten Werte ein:
   $"SA" = 2(l w + l h + w h)$]
#only("3-")[3. Umstellen, um $h$ zu isolieren:
   $h = ("SA"/2 - l w) / (l + w)$]
#only("1")[
#voiceover("Lass uns die Schritte zur Lösung der fehlenden Dimension überprüfen. Wir beginnen mit unserer Formel für die Oberfläche.")
]
#only("2")[
#voiceover("Als nächstes setzen wir die bekannten Werte für Oberfläche, Länge und Breite in unsere Gleichung ein.")
]
#only("3")[
#voiceover("Schließlich stellen wir die Gleichung um, um h zu berechnen. Die Höhe ist gleich der Oberfläche geteilt durch 2, minus Länge mal Breite, alles geteilt durch die Summe von Länge und Breite.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Formel für die Oberfläche: $"SA" = 2(l w + l h + w h)$ 📐]
#only("2-")[- Lösung der fehlenden Dimension: Algebra 🧮]
#only("3-")[- Formel für die Höhe: $h = ("SA"/2 - l w) / (l + w)$ 📏]
#only("4-")[- Nützlich in realen Anwendungen 🏠🎁]
#only("1")[
#voiceover("Zusammenfassend haben wir die Formel für die Oberfläche von Quadern wiederholt.")
]
#only("2")[
#voiceover("Wir haben gesehen, wie man mit Algebra eine fehlende Dimension berechnet, wenn die Oberfläche und zwei andere Dimensionen gegeben sind.")
]
#only("3")[
#voiceover("Wir haben eine Formel abgeleitet, um die Höhe direkt zu berechnen, wenn die Oberfläche, Länge und Breite gegeben sind.")
]
#only("4")[
#voiceover("Dieser Prozess ist in vielen realen Anwendungen nützlich, wie zum Beispiel bei der Verpackungsgestaltung oder bei Berechnungen zum Streichen von Räumen.")
]
]