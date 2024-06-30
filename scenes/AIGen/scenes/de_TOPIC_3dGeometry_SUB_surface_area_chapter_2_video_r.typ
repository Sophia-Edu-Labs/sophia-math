#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Oberfläche von Quadern 📦]
  #v(40pt)
  #only("1-")[- Quader sind 3D-Formen mit 6 rechteckigen Flächen 🧊]
  #only("2-")[- Die Oberfläche ist die Gesamtfläche aller Flächen 🔍]
  #only("3-")[- Wichtig in Verpackung, Bauwesen und mehr 🏗️]

  #only("1")[
    #voiceover("Lass uns die Oberfläche von Quadern wiederholen. Quader, auch als rechteckige Prismen bekannt, sind dreidimensionale Formen mit sechs rechteckigen Flächen.")
  ]
  #only("2")[
    #voiceover("Die Oberfläche eines Quaders ist die Gesamtfläche aller seiner Flächen. Dieses Konzept ist in vielen realen Anwendungen entscheidend.")
  ]
  #only("3")[
    #voiceover("Das Verständnis der Oberfläche ist wichtig in Bereichen wie Verpackung, Bauwesen und Materialwissenschaft. Lass uns tiefer in die Berechnung eintauchen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche 🧮]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Vertices
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Faces
faces = [
    [0, 1, 2, 3], [4, 5, 6, 7], [0, 3, 7, 4],
    [1, 2, 6, 5], [0, 1, 5, 4], [2, 3, 7, 6]
]

# Plot cuboid
ax.add_collection3d(art3d.Poly3DCollection([vertices[f] for f in faces], 
                                           alpha=0.5, facecolor='cyan'))

# Add labels
ax.text(l/2, -0.5, 0, 'l', fontsize=12)
ax.text(l+0.2, w/2, 0, 'w', fontsize=12)
ax.text(l+0.2, w+0.2, h/2, 'h', fontsize=12)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid Dimensions')
plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  
  #only("2-")[- Formel: $"SA" = 2(l w + l h + w h)$]
  #only("3-")[- $l$: Länge, $w$: Breite, $h$: Höhe]
  #only("4-")[- Summe der Flächen aller 6 Seiten]

  #only("1")[
    #voiceover("Hier ist ein Quader mit der Länge l, der Breite w und der Höhe h. Um seine Oberfläche zu berechnen, müssen wir alle sechs Flächen berücksichtigen.")
  ]
  #only("2")[
    #voiceover("Die Formel für die Oberfläche eines Quaders lautet: SA gleich 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("3")[
    #voiceover("In dieser Formel steht l für die Länge, w für die Breite und h für die Höhe des Quaders.")
  ]
  #only("4")[
    #voiceover("Diese Formel summiert im Wesentlichen die Flächen aller sechs rechteckigen Seiten des Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Quader: 3D-Form mit 6 rechteckigen Flächen 🧊]
  #only("2-")[- Oberfläche: Summe der Flächen aller Seiten 🔢]
  #only("3-")[- Formel: $"SA" = 2(l w + l h + w h)$ 📏]
  #only("4-")[- Gilt für Kisten, Räume, Gebäude usw. 🏠]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir besprochen haben. Ein Quader ist eine dreidimensionale Form mit sechs rechteckigen Flächen.")
  ]
  #only("2")[
    #voiceover("Die Oberfläche eines Quaders ist die Summe der Flächen aller seiner Seiten.")
  ]
  #only("3")[
    #voiceover("Wir berechnen dies mit der Formel: Oberfläche gleich 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("4")[
    #voiceover("Dieses Konzept gilt für viele reale Objekte wie Kisten, Räume und Gebäude. Das Verständnis der Oberfläche hilft bei verschiedenen praktischen Anwendungen, von der Verpackungsgestaltung bis zur Bauplanung.")
  ]
]