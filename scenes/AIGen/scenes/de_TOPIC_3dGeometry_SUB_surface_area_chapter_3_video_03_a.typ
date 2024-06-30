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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 10, 4, 3

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

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
for side in sides:
    poly3d = [[vertices[0], vertices[1], vertices[2], vertices[3]] for vertices in [side]]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels and title
ax.set_xlabel('Length (10 m)')
ax.set_ylabel('Width (4 m)')
ax.set_zlabel('Height (3 m)')
ax.set_title('Cuboid 10m x 4m x 3m')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, der 10 Meter lang, 4 Meter breit und 3 Meter hoch ist. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Wobei l = Länge, w = Breite, h = Höhe]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für die Oberfläche eines Quaders zu erinnern. Die Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht l für Länge, w für Breite und h für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- l = 10 m, w = 4 m, h = 3 m]
  #v(20pt)
  #only("2-")[- Oberfläche = 2((10 × 4) + (10 × 3) + (4 × 3))]
  #only("1")[
    #voiceover("Nun setzen wir unsere bekannten Werte in die Formel ein. Wir haben eine Länge von 10 Metern, eine Breite von 4 Metern und eine Höhe von 3 Metern.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese Werte in unsere Formel einsetzen, erhalten wir: Oberfläche ist gleich 2 mal die Summe aus 10 mal 4, plus 10 mal 3, plus 4 mal 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- Oberfläche = 2(40 + 30 + 12)]
  #v(20pt)
  #only("2-")[- Oberfläche = 2(82)]
  #v(20pt)
  #only("3-")[- Oberfläche = 164 m²]
  #only("1")[
    #voiceover("Lass uns jeden Teil innerhalb der Klammern berechnen. 10 mal 4 ist 40, 10 mal 3 ist 30 und 4 mal 3 ist 12.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese addieren, erhalten wir 82 innerhalb der Klammern.")
  ]
  #only("3")[
    #voiceover("Schließlich multiplizieren wir dies mit 2, was uns eine Gesamtoberfläche von 164 Quadratmetern ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 164 m²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer Einheiten in deiner endgültigen Antwort angeben!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Oberfläche des Quaders 164 Quadratmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, dass es immer wichtig ist, die richtigen Einheiten in deiner endgültigen Antwort anzugeben. In diesem Fall handelt es sich um Fläche, daher sind unsere Einheiten Quadratmeter.")
  ]
]