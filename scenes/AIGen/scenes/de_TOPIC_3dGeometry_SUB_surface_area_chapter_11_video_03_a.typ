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
l, w, h = 20, 15, 10

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
    poly3d = [side]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='blue', alpha=0.1))

# Set labels and title
ax.set_xlabel('Length (20 m)')
ax.set_ylabel('Width (15 m)')
ax.set_zlabel('Height (10 m)')
ax.set_title('Cuboid 20m x 15m x 10m')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, der 20 Meter lang, 15 Meter breit und 10 Meter hoch ist. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- wobei l = Länge, w = Breite, h = Höhe]
  #only("1")[
    #voiceover("Um die Oberfläche eines Quaders zu berechnen, verwenden wir die Formel: Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht l für Länge, w für Breite und h für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einsetzen der Werte]
  #v(40pt)
  #only("1-")[- l = 20 m]
  #only("2-")[- w = 15 m]
  #only("3-")[- h = 10 m]
  #v(20pt)
  #only("4-")[- SA = 2((20 × 15) + (20 × 10) + (15 × 10))]
  #only("1")[
    #voiceover("Nun setzen wir unsere Werte ein. Wir wissen, dass die Länge 20 Meter beträgt,")
  ]
  #only("2")[
    #voiceover("die Breite 15 Meter beträgt,")
  ]
  #only("3")[
    #voiceover("und die Höhe 10 Meter beträgt.")
  ]
  #only("4")[
    #voiceover("Wenn wir diese Werte in unsere Formel einsetzen, erhalten wir: Oberfläche ist gleich 2 mal die Summe aus 20 mal 15, plus 20 mal 10, plus 15 mal 10.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung]
  #v(40pt)
  #only("1-")[- SA = 2(300 + 200 + 150)]
  #v(20pt)
  #only("2-")[- SA = 2(650)]
  #v(20pt)
  #only("3-")[- SA = 1300 m²]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt rechnen. Zuerst, 20 mal 15 ist 300, 20 mal 10 ist 200, und 15 mal 10 ist 150.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese addieren, erhalten wir 650 in den Klammern.")
  ]
  #only("3")[
    #voiceover("Schließlich multiplizieren wir mit 2, was uns 1300 Quadratmeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 1300 m²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in deiner Antwort angeben!]
  #only("1")[
    #voiceover("Also lautet unser Endergebnis, dass die Oberfläche des Quaders 1300 Quadratmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, es ist wichtig, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Fläche, daher sind unsere Einheiten Quadratmeter.")
  ]
]