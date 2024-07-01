#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Würfels]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Würfel-Eckpunkte
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]], dtype=float)

# Eckpunkte skalieren
vertices *= 5.5

# Würfel-Flächen
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_xlim(0, 5.5)
ax.set_ylim(0, 5.5)
ax.set_zlim(0, 5.5)
ax.set_title('Würfel mit Seitenlänge 5.5 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Ausgezeichnet! Du hast das Volumen des Würfels korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Würfel zu tun, der eine Seitenlänge von 5,5 Zentimetern hat. Hier ist eine visuelle Darstellung unseres Würfels.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Formel erinnern]
  #v(40pt)
  #only("1-")[- Volumen eines Würfels = (Seitenlänge)³]
  #v(20pt)
  #only("2-")[- $V = s^3$, wobei $s$ die Seitenlänge ist]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich die Formel für das Volumen eines Würfels zu erinnern. Das Volumen eines Würfels ist gleich der Seitenlänge hoch drei.")
  ]
  #only("2")[
    #voiceover("Wir können dies als V gleich s hoch drei schreiben, wobei s die Seitenlänge darstellt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Wert einsetzen]
  #v(40pt)
  #only("1-")[- Seitenlänge, $s = 5.5"cm"$]
  #v(20pt)
  #only("2-")[- $V = (5.5"cm")^3$]
  #only("1")[
    #voiceover("Nun setzen wir unseren bekannten Wert ein. Wir wissen, dass die Seitenlänge 5,5 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Also setzen wir 5,5 Zentimeter für s in unsere Formel ein. Das ergibt: Volumen gleich 5,5 Zentimeter hoch drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- $V = (5.5"cm")^3$]
  #v(20pt)
  #only("2-")[- $V = 5.5 × 5.5 × 5.5"cm"^3$]
  #v(20pt)
  #only("3-")[- $V = 166.375"cm"^3$]
  #only("1")[
    #voiceover("Nun berechnen wir. Wir müssen 5,5 dreimal mit sich selbst multiplizieren.")
  ]
  #only("2")[
    #voiceover("Das ist dasselbe wie 5,5 mal 5,5 mal 5,5 Kubikzentimeter.")
  ]
  #only("3")[
    #voiceover("Wenn wir diese Zahlen multiplizieren, erhalten wir 166,375 Kubikzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Das Volumen des Würfels beträgt $166.375"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Einheiten sind entscheidend!]
  #only("1")[
    #voiceover("Unsere endgültige Antwort lautet also, dass das Volumen des Würfels 166,375 Kubikzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, dass es wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Volumen, daher sind unsere Einheiten Kubikzentimeter.")
  ]
]