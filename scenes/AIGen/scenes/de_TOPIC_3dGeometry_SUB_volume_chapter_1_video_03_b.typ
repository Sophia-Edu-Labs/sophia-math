#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kantenlänge des Würfels]
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

# Plot edges
for edge in edges:
    ax.plot3D(*zip(*vertices[edge]), color="blue")

# Highlight one edge
ax.plot3D(*zip(*vertices[[0, 1]]), color="red", linewidth=3)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Edge Length Highlighted')

# Remove tick labels
ax.set_xticklabels([])
ax.set_yticklabels([])
ax.set_zticklabels([])

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #v(20pt)
  #only("2-")[Volumen des Würfels: $V = 512 "cm"^3$]
  #v(20pt)
  #only("3-")[Finde: Kantenlänge $s$]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung gemeinsam durch. Hier ist eine Visualisierung eines Würfels, bei dem eine Kante rot hervorgehoben ist.")
  ]
  #only("2")[
    #voiceover("Es ist gegeben, dass das Volumen des Würfels 512 Kubikzentimeter beträgt.")
  ]
  #only("3")[
    #voiceover("Unsere Aufgabe ist es, die Länge einer Kante zu finden, die wir s nennen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Formel erinnern]
  #v(40pt)
  #only("1-")[Volumen eines Würfels: $V = s^3$]
  #v(20pt)
  #only("2-")[Wobei $s$ die Länge einer Kante ist]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für das Volumen eines Würfels zu erinnern. Das Volumen eines Würfels ist gleich dem Kubus seiner Kantenlänge.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht s für die Länge einer Kante des Würfels.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Bekannte Werte einsetzen]
  #v(40pt)
  #only("1-")[$512 "cm"^3 = s^3$]
  #only("1")[
    #voiceover("Jetzt setzen wir den bekannten Wert in unsere Formel ein. Wir wissen, dass das Volumen 512 Kubikzentimeter beträgt, also können wir schreiben: 512 Kubikzentimeter gleich s hoch drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Löse nach s auf]
  #v(40pt)
  #only("1-")[$s = root(3, 512 "cm"^3)$]
  #v(20pt)
  #only("2-")[$s = 8 "cm"$]
  #only("1")[
    #voiceover("Um nach s aufzulösen, müssen wir die dritte Wurzel auf beiden Seiten ziehen. Die dritte Wurzel ist die Umkehroperation des Kubierens einer Zahl.")
  ]
  #only("2")[
    #voiceover("Wenn wir die dritte Wurzel von 512 berechnen, erhalten wir 8. Daher beträgt die Länge einer Kante des Würfels 8 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[Die Länge einer Kante des Würfels beträgt 8 cm. ✅]
  #v(20pt)
  #only("2-")[💡 Immer die Einheiten in Deiner Antwort angeben!]
  #only("1")[
    #voiceover("Unsere endgültige Antwort lautet also, dass die Länge einer Kante des Würfels 8 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, immer die richtigen Einheiten in Deiner Antwort anzugeben. In diesem Fall, da wir es mit einer Länge zu tun haben, sind unsere Einheiten Zentimeter.")
  ]
]