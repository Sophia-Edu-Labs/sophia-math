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

fig = plt.figure(figsize=(10, 7))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 8, 2, 3

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
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    verts = [list(zip(x, y, z))]
    ax.add_collection3d(Poly3DCollection(verts, facecolors='cyan', linewidths=1, edgecolors='blue', alpha=0.1))

# Set labels and title
ax.set_xlabel('Length (8 m)')
ax.set_ylabel('Width (2 m)')
ax.set_zlabel('Height (3 m)')
ax.set_title('Cuboid 8m x 2m x 3m')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung gemeinsam durch. Wir haben es mit einem Quader zu tun, der Abmessungen von 8 Metern in der Länge, 2 Metern in der Breite und 3 Metern in der Höhe hat. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = $2(lw + lh + wh)$]
  #v(20pt)
  #only("2-")[- Wobei $l$ = Länge, $w$ = Breite, $h$ = Höhe]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für die Oberfläche eines Quaders zu erinnern. Sie lautet: 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Hier steht $l$ für Länge, $w$ für Breite und $h$ für Höhe.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- $l = 8$ m, $w = 2$ m, $h = 3$ m]
  #v(20pt)
  #only("2-")[- Oberfläche = $2(8 \times 2 + 8 \times 3 + 2 \times 3)$]
  #only("1")[
    #voiceover("Nun setzen wir unsere bekannten Werte in die Formel ein. Wir haben eine Länge von 8 Metern, eine Breite von 2 Metern und eine Höhe von 3 Metern.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir: Oberfläche gleich 2 mal die Summe aus 8 mal 2, plus 8 mal 3, plus 2 mal 3.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- Oberfläche = $2(16 + 24 + 6)$]
  #v(20pt)
  #only("2-")[- Oberfläche = $2(46)$]
  #v(20pt)
  #only("3-")[- Oberfläche = $92$ m²]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Zuerst, 8 mal 2 ist 16, 8 mal 3 ist 24, und 2 mal 3 ist 6.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese addieren, erhalten wir 46 in den Klammern.")
  ]
  #only("3")[
    #voiceover("Schließlich, wenn wir mit 2 multiplizieren, erhalten wir 92 Quadratmeter.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt $92$ m²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in deiner Antwort angeben!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Oberfläche des Quaders 92 Quadratmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, es ist wichtig, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um eine Fläche, daher sind unsere Einheiten Quadratmeter.")
  ]
]