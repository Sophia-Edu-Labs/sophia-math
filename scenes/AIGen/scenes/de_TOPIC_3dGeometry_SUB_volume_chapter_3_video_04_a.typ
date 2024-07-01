#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Quaders]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np
from itertools import combinations

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 7, 4, 5

# Create vertices
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Define faces
faces = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot faces
for face in faces:
    face = np.array(face)  # Convert face to NumPy array
    ax.add_collection3d(Poly3DCollection([face], alpha=0.5, facecolors='cyan', edgecolors='r'))

# Plot edges
for s, e in combinations(vertices, 2):
    if np.sum(np.abs(s-e)) in [l, w, h]:
        ax.plot3D(*zip(s, e), color="b")

# Set labels
ax.set_xlabel('Length (7 cm)')
ax.set_ylabel('Width (4 cm)')
ax.set_zlabel('Height (5 cm)')
ax.set_title('Cuboid')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast das Volumen des Quaders korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben einen Quader mit einer Länge von 7 Zentimetern, einer Breite von 4 Zentimetern und einer Höhe von 5 Zentimetern. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Volumen eines Quaders = Länge × Breite × Höhe]
  #v(20pt)
  #only("2-")[- $V = l × w × h$]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für das Volumen eines Quaders zu erinnern. Das Volumen eines Quaders ist gleich seiner Länge multipliziert mit seiner Breite multipliziert mit seiner Höhe.")
  ]
  #only("2")[
    #voiceover("Wir können dies als V gleich l mal w mal h schreiben, wobei V für Volumen steht, l für Länge, w für Breite und h für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- Länge, $l = 7"cm"$]
  #v(10pt)
  #only("2-")[- Breite, $w = 4"cm"$]
  #v(10pt)
  #only("3-")[- Höhe, $h = 5"cm"$]
  #v(20pt)
  #only("4-")[- $V = 7"cm" × 4"cm" × 5"cm"$]
  #only("1")[
    #voiceover("Nun, lass uns unsere bekannten Werte einsetzen. Wir wissen, dass die Länge 7 Zentimeter beträgt,")
  ]
  #only("2")[
    #voiceover("die Breite 4 Zentimeter beträgt,")
  ]
  #only("3")[
    #voiceover("und die Höhe 5 Zentimeter beträgt.")
  ]
  #only("4")[
    #voiceover("Setzen wir diese in unsere Formel ein, erhalten wir: Volumen gleich 7 Zentimeter mal 4 Zentimeter mal 5 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- $V = 7"cm" × 4"cm" × 5"cm"$]
  #v(20pt)
  #only("2-")[- $V = 28"cm"^2 × 5"cm"$]
  #v(20pt)
  #only("3-")[- $V = 140"cm"^3$]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Zuerst multiplizieren wir 7 mit 4.")
  ]
  #only("2")[
    #voiceover("7 mal 4 ist 28, also wird unsere Gleichung zu 28 Quadratzentimetern mal 5 Zentimeter.")
  ]
  #only("3")[
    #voiceover("Schließlich multiplizieren wir mit 5. 28 mal 5 ist 140. Also lautet unsere endgültige Antwort 140 Kubikzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Das Volumen des Quaders beträgt $140"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Einheiten sind entscheidend!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass das Volumen des Quaders 140 Kubikzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, dass es entscheidend ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Volumen, daher sind unsere Einheiten Kubikzentimeter. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]