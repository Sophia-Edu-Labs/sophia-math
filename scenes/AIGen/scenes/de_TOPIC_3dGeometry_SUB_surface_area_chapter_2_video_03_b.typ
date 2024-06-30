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
l, w, h = 5, 3, 4

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
    poly3d = [[vertices[0], vertices[1], vertices[2], vertices[3]] for vertices in sides]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (5 cm)')
ax.set_ylabel('Width (3 cm)')
ax.set_zlabel('Height (4 cm)')
ax.set_title('Cuboid')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, der eine Länge von 5 Zentimetern, eine Breite von 3 Zentimetern und eine Höhe von 4 Zentimetern hat. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[- Oberfläche = $2(lw + lh + wh)$]
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
  #only("1-")[- $l$ = 5 cm, $w$ = 3 cm, $h$ = 4 cm]
  #v(20pt)
  #only("2-")[- $SA = 2(5 × 3 + 5 × 4 + 3 × 4)$]
  #only("1")[
    #voiceover("Nun, lass uns unsere Werte einsetzen. Wir haben eine Länge von 5 Zentimetern, eine Breite von 3 Zentimetern und eine Höhe von 4 Zentimetern.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir: Oberfläche ist gleich zwei mal die Summe aus fünf mal drei, plus fünf mal vier, plus drei mal vier.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung]
  #v(40pt)
  #only("1-")[- $SA = 2(15 + 20 + 12)$]
  #v(20pt)
  #only("2-")[- $SA = 2(47)$]
  #v(20pt)
  #only("3-")[- $SA = 94 cm²$]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt rechnen. Zuerst multiplizieren wir die Zahlen innerhalb jeder Klammer.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese addieren, erhalten wir 47 innerhalb der Klammern.")
  ]
  #only("3")[
    #voiceover("Schließlich multiplizieren wir mit 2, was uns 94 Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 94 cm²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in deiner Antwort angeben!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Oberfläche des Quaders 94 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit! Denke daran, dass es immer wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. In diesem Fall, da wir es mit Fläche zu tun haben, sind unsere Einheiten Quadratzentimeter.")
  ]
]