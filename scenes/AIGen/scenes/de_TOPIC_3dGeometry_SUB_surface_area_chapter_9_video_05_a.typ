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
l, w, h = 14, 9, 6

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
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels and title
ax.set_xlabel('Length (14 m)')
ax.set_ylabel('Width (9 m)')
ax.set_zlabel('Height (6 m)')
ax.set_title('Cuboid Dimensions')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, einer dreidimensionalen rechteckigen Form. Wie wir in diesem Diagramm sehen können, hat unser Quader eine Länge von 14 Metern, eine Breite von 9 Metern und eine Höhe von 6 Metern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = 2($lw$ + $lh$ + $wh$)]
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
  #only("1-")[- $l$ = 14 m]
  #only("2-")[- $w$ = 9 m]
  #only("3-")[- $h$ = 6 m]
  #v(20pt)
  #only("4-")[- $SA$ = 2(14 × 9 + 14 × 6 + 9 × 6)]
  #only("1")[
    #voiceover("Nun setzen wir unsere Werte ein. Wir haben eine Länge von 14 Metern,")
  ]
  #only("2")[
    #voiceover("eine Breite von 9 Metern,")
  ]
  #only("3")[
    #voiceover("und eine Höhe von 6 Metern.")
  ]
  #only("4")[
    #voiceover("Wenn wir diese Werte in unsere Formel einsetzen, erhalten wir: Oberfläche ist gleich zwei mal die Summe aus 14 mal 9, plus 14 mal 6, plus 9 mal 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung]
  #v(40pt)
  #only("1-")[- $SA$ = 2(126 + 84 + 54)]
  #v(20pt)
  #only("2-")[- $SA$ = 2(264)]
  #v(20pt)
  #only("3-")[- $SA$ = 528 m²]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt rechnen. Zuerst, 14 mal 9 ist 126, 14 mal 6 ist 84, und 9 mal 6 ist 54.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese addieren, erhalten wir 264 in den Klammern.")
  ]
  #only("3")[
    #voiceover("Schließlich multiplizieren wir mit 2 und erhalten eine Gesamtoberfläche von 528 Quadratmetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 528 m²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in deiner Antwort angeben!]
  #only("1")[
    #voiceover("Also lautet unser Endergebnis, dass die Oberfläche des Quaders 528 Quadratmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, dass es immer wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier haben wir es mit Fläche zu tun, also sind unsere Einheiten Quadratmeter.")
  ]
]