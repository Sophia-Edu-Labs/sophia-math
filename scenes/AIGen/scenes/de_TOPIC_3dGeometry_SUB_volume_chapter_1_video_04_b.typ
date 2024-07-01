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
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])

# Cube edges
edges = [[0, 1], [1, 2], [2, 3], [3, 0],
         [4, 5], [5, 6], [6, 7], [7, 4],
         [0, 4], [1, 5], [2, 6], [3, 7]]

# Plot cube
for edge in edges:
    ax.plot3D(*zip(*vertices[edge]), color="blue")

# Label vertices
for i, (x, y, z) in enumerate(vertices):
    ax.text(x, y, z, f'({x},{y},{z})', fontsize=8)

# Label edges
ax.text(0.5, 0, 0, '9 cm', fontsize=10, color='red')
ax.text(0, 0.5, 0, '9 cm', fontsize=10, color='red')
ax.text(0, 0, 0.5, '9 cm', fontsize=10, color='red')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Side Length 9 cm')

plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]]
#only("1")[
#voiceover("Keine Sorge, das war ein kniffliges Problem. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Würfel zu tun, der eine Seitenlänge von 9 Zentimetern hat. Hier ist eine Visualisierung unseres Würfels.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
#v(40pt)
#only("1-")[- Volumen eines Würfels = (Seitenlänge)³]
#v(20pt)
#only("2-")[- $V = s^3$, wobei $s$ die Seitenlänge ist]
#only("1")[
#voiceover("Der erste Schritt ist, sich an die Formel für das Volumen eines Würfels zu erinnern. Das Volumen eines Würfels ist gleich der Seitenlänge hoch drei.")
]
#only("2")[
#voiceover("Wir können dies als V gleich s hoch drei schreiben, wobei s die Seitenlänge darstellt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Den Wert einsetzen]
#v(40pt)
#only("1-")[- Seitenlänge, $s = 9"cm"$]
#v(20pt)
#only("2-")[- $V = (9"cm")^3$]
#only("1")[
#voiceover("Nun setzen wir unseren bekannten Wert ein. Uns wird gegeben, dass die Seitenlänge 9 Zentimeter beträgt.")
]
#only("2")[
#voiceover("Also setzen wir 9 Zentimeter für s in unsere Formel ein. Das ergibt: Volumen gleich 9 Zentimeter hoch drei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
#v(40pt)
#only("1-")[- $V = (9"cm")^3$]
#v(20pt)
#only("2-")[- $V = 9"cm" dot 9"cm" dot 9"cm"$]
#v(20pt)
#only("3-")[- $V = 729"cm"^3$]
#only("1")[
#voiceover("Jetzt berechnen wir. Wir müssen 9 Zentimeter hoch drei nehmen.")
]
#only("2")[
#voiceover("Das bedeutet, dass wir 9 Zentimeter dreimal mit sich selbst multiplizieren.")
]
#only("3")[
#voiceover("9 mal 9 ist 81, und 81 mal 9 ist 729. Also beträgt das Volumen 729 Kubikzentimeter.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[#text(size: 24pt)[Das Volumen des Würfels beträgt $729"cm"^3$]]
#v(40pt)
#only("2-")[💡 Denke daran: Einheiten sind entscheidend!]
#only("1")[
#voiceover("Also lautet unsere endgültige Antwort, dass das Volumen des Würfels 729 Kubikzentimeter beträgt.")
]
#only("2")[
#voiceover("Denke daran, dass es wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Volumen, daher sind unsere Einheiten Kubikzentimeter.")
]
]