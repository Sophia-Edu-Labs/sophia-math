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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 9, 5, 3

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

# Create a Poly3DCollection object for the sides
poly3d = [side for side in sides]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (9 cm)')
ax.set_ylabel('Width (5 cm)')
ax.set_zlabel('Height (3 cm)')
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
    #voiceover("Großartige Arbeit beim Lösen dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben einen Quader mit einer Länge von 9 Zentimetern, einer Breite von 5 Zentimetern und einer Höhe von 3 Zentimetern. Hier ist eine Visualisierung unseres Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Dabei ist l = Länge, w = Breite, h = Höhe]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für die Oberfläche eines Quaders zu erinnern. Es ist zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht l für Länge, w für Breite und h für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- l = 9 cm, w = 5 cm, h = 3 cm]
  #v(20pt)
  #only("2-")[- SA = 2(9 × 5 + 9 × 3 + 5 × 3) cm²]
  #only("1")[
    #voiceover("Nun setzen wir unsere bekannten Werte in die Formel ein. Wir haben eine Länge von 9 Zentimetern, eine Breite von 5 Zentimetern und eine Höhe von 3 Zentimetern.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir: Oberfläche gleich 2 mal die Summe aus 9 mal 5, plus 9 mal 3, plus 5 mal 3, alles in Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- SA = 2(45 + 27 + 15) cm²]
  #v(20pt)
  #only("2-")[- SA = 2(87) cm²]
  #v(20pt)
  #only("3-")[- SA = 174 cm²]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Zuerst berechnen wir, was in den Klammern steht. 9 mal 5 ist 45, 9 mal 3 ist 27 und 5 mal 3 ist 15.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese addieren, erhalten wir 87 in den Klammern.")
  ]
  #only("3")[
    #voiceover("Schließlich multiplizieren wir dies mit 2 und erhalten eine Oberfläche von 174 Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 174 cm²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in deiner Antwort angeben!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass die Oberfläche des Quaders 174 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, es ist immer wichtig, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Fläche, daher sind unsere Einheiten Quadratzentimeter.")
  ]
]