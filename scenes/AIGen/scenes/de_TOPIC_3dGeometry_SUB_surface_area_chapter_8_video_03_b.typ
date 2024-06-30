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
l, w, h = 15, 8, 5

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
    poly3d = [[side[0], side[1], side[2], side[3]]]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (15 m)')
ax.set_ylabel('Width (8 m)')
ax.set_zlabel('Height (5 m)')
ax.set_title('Cuboid 15m x 8m x 5m')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, der 15 Meter lang, 8 Meter breit und 5 Meter hoch ist. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel identifizieren]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Wobei l = Länge, w = Breite, h = Höhe]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für die Oberfläche eines Quaders zu erinnern. Die Oberfläche ist gleich zweimal die Summe von Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht l für Länge, w für Breite und h für Höhe.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- l = 15 m, w = 8 m, h = 5 m]
  #v(20pt)
  #only("2-")[- Oberfläche = 2(15 × 8 + 15 × 5 + 8 × 5)]
  #only("1")[
    #voiceover("Nun setzen wir unsere bekannten Werte ein. Wir haben eine Länge von 15 Metern, eine Breite von 8 Metern und eine Höhe von 5 Metern.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir: Oberfläche ist gleich 2 mal die Summe von 15 mal 8, plus 15 mal 5, plus 8 mal 5.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- 2(15 × 8 + 15 × 5 + 8 × 5)]
  #v(20pt)
  #only("2-")[- = 2(120 + 75 + 40)]
  #v(20pt)
  #only("3-")[- = 2(235)]
  #v(20pt)
  #only("4-")[- = 470 m²]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Zuerst multiplizieren wir innerhalb jeder Klammer.")
  ]
  #only("2")[
    #voiceover("15 mal 8 ist 120, 15 mal 5 ist 75 und 8 mal 5 ist 40.")
  ]
  #only("3")[
    #voiceover("Wenn wir diese addieren, erhalten wir 235 innerhalb der Klammern.")
  ]
  #only("4")[
    #voiceover("Schließlich multiplizieren wir mit 2, was uns 470 Quadratmeter ergibt.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 470 m²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in deiner Antwort angeben!]
  #only("1")[
    #voiceover("Daher lautet unsere endgültige Antwort, dass die Oberfläche des Quaders 470 Quadratmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, es ist wichtig, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Fläche, daher sind unsere Einheiten Quadratmeter.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Überprüfung]
  #v(40pt)
  #only("1-")[- Gegebene Antwort: 550 m²]
  #v(20pt)
  #only("2-")[- Unsere berechnete Antwort: 470 m²]
  #v(20pt)
  #only("3-")[- Die gegebene Antwort war falsch]
  #only("1")[
    #voiceover("Nun lass uns unsere Antwort mit der in der Übung gegebenen Antwort vergleichen.")
  ]
  #only("2")[
    #voiceover("In der Übung wurde angegeben, dass die Antwort 550 Quadratmeter beträgt, aber unsere berechnete Antwort ist 470 Quadratmeter.")
  ]
  #only("3")[
    #voiceover("Das bedeutet, dass die gegebene Antwort in der Übung falsch war. Denke immer daran, deine Berechnungen zu überprüfen und deinem eigenen Ergebnis zu vertrauen!")
  ]
]