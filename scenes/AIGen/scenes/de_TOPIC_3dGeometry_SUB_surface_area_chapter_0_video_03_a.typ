#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np
from itertools import product, combinations

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 4]
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s-e)) == r[1]-r[0]:
        ax.plot3D(*zip(s, e), color="b")

# Highlight one face
verts = [(0, 0, 0), (0, 4, 0), (4, 4, 0), (4, 0, 0)]
ax.add_collection3d(Poly3DCollection([verts], facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Side Length 4 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben einen Würfel mit einer Seitenlänge von 4 Zentimetern. Hier ist eine Visualisierung unseres Würfels.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Würfels = 6 × (Seitenlänge)²]
  #v(20pt)
  #only("2-")[- $"SA" = 6s^2$, wobei $s$ die Seitenlänge ist]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für die Oberfläche eines Würfels zu erinnern. Die Oberfläche eines Würfels ist gleich sechs mal das Quadrat seiner Seitenlänge.")
  ]
  #only("2")[
    #voiceover("Wir können das so schreiben: S A gleich 6 s Quadrat, wobei s die Seitenlänge darstellt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- Seitenlänge, $s = 4"cm"$]
  #v(20pt)
  #only("2-")[- $"SA" = 6 × (4"cm")^2$]
  #only("1")[
    #voiceover("Nun, lass uns unseren bekannten Wert einsetzen. Uns wird gegeben, dass die Seitenlänge 4 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Also ersetzen wir s durch 4 Zentimeter in unserer Formel. Das ergibt: Oberfläche gleich 6 mal 4 Zentimeter im Quadrat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- $"SA" = 6 × (4"cm")^2$]
  #v(20pt)
  #only("2-")[- $"SA" = 6 × 16"cm"^2$]
  #v(20pt)
  #only("3-")[- $"SA" = 96"cm"^2$]
  #only("1")[
    #voiceover("Nun lass uns berechnen. Zuerst quadrieren wir 4 Zentimeter.")
  ]
  #only("2")[
    #voiceover("4 Zentimeter im Quadrat sind 16 Quadratzentimeter. Also wird unsere Gleichung zu 6 mal 16 Quadratzentimeter.")
  ]
  #only("3")[
    #voiceover("Schließlich multiplizieren wir mit 6. 6 mal 16 ist 96. Also beträgt die Oberfläche 96 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Würfels beträgt $96"cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Einheiten sind wichtig!]
  #only("1")[
    #voiceover("Also lautet unser Endergebnis, dass die Oberfläche des Würfels 96 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, dass es wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier haben wir es mit Fläche zu tun, also sind unsere Einheiten Quadratzentimeter.")
  ]
]