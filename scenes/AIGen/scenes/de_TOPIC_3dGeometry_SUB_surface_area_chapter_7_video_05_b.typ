#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Quaders]
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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 9, 4, 6

# Vertices of the cuboid
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# List of sides
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot sides
poly3d = [side for side in sides]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels and title
ax.set_xlabel('Length (9 m)')
ax.set_ylabel('Width (4 m)')
ax.set_zlabel('Height (6 m)')
ax.set_title('Cuboid')

# Set the aspect ratio to be equal
ax.set_box_aspect([l, w, h])  # Aspect ratio is 1:1:1

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Keine Sorge, das war ein guter Versuch! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, das ist eine dreidimensionale rechteckige Form. Wie Du in diesem Diagramm sehen kannst, hat unser Quader eine Länge von 9 Metern, eine Breite von 4 Metern und eine Höhe von 6 Metern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = $2(lw + lh + wh)$]
  #v(20pt)
  #only("2-")[- Wobei $l$ = Länge, $w$ = Breite, $h$ = Höhe]
  #only("1")[
    #voiceover("Um die Oberfläche eines Quaders zu berechnen, verwenden wir die Formel: Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht $l$ für Länge, $w$ für Breite und $h$ für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einsetzen der Werte]
  #v(40pt)
  #only("1-")[- $l$ = 9 m]
  #only("2-")[- $w$ = 4 m]
  #only("3-")[- $h$ = 6 m]
  #v(20pt)
  #only("4-")[- $SA = 2(9 × 4 + 9 × 6 + 4 × 6)$]
  #only("1")[
    #voiceover("Nun setzen wir unsere Werte ein. Wir wissen, dass die Länge 9 Meter beträgt,")
  ]
  #only("2")[
    #voiceover("die Breite 4 Meter beträgt,")
  ]
  #only("3")[
    #voiceover("und die Höhe 6 Meter beträgt.")
  ]
  #only("4")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir: Oberfläche ist gleich zwei mal die Summe aus neun mal vier, plus neun mal sechs, plus vier mal sechs.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
  #v(40pt)
  #only("1-")[- $SA = 2(36 + 54 + 24)$]
  #v(20pt)
  #only("2-")[- $SA = 2(114)$]
  #v(20pt)
  #only("3-")[- $SA = 228 m²$]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt rechnen. Zuerst ist neun mal vier gleich sechsunddreißig, neun mal sechs ist vierundfünfzig, und vier mal sechs ist vierundzwanzig.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese addieren, erhalten wir hundertvierzehn in den Klammern.")
  ]
  #only("3")[
    #voiceover("Schließlich, wenn wir mit zwei multiplizieren, erhalten wir zweihundertachtundzwanzig Quadratmeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 228 m²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in der endgültigen Antwort angeben!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Oberfläche des Quaders zweihundertachtundzwanzig Quadratmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit! Denke daran, es ist immer wichtig, die richtigen Einheiten in der endgültigen Antwort anzugeben. In diesem Fall handelt es sich um Fläche, daher sind unsere Einheiten Quadratmeter.")
  ]
]