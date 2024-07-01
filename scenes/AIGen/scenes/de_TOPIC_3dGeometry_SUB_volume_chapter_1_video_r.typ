#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Volumen von Würfeln 📦]
  #v(40pt)
  #only("1-")[- Würfel: 3D-Form mit gleichen Seiten 🧊]
  #only("2-")[- Volumen: Raum innerhalb des Würfels 🌟]
  #only("3-")[- Formel: $V = s^3$ (s = Seitenlänge) 📏]
  #only("1")[
    #voiceover("Lass uns das Konzept des Volumens für Würfel wiederholen. Ein Würfel ist eine dreidimensionale Form, bei der alle Seiten gleich lang sind.")
  ]
  #only("2")[
    #voiceover("Das Volumen eines Würfels repräsentiert den Raum innerhalb des Würfels.")
  ]
  #only("3")[
    #voiceover("Wir berechnen dieses Volumen mit der Formel V gleich s hoch drei, wobei s die Länge einer Seite des Würfels ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumenformel 📐]
  #v(40pt)
  #only("1-")[
    #align(center)[$ V = s^3 $]
  ]
  #v(20pt)
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube
s = 2
vertices = np.array([[0, 0, 0], [s, 0, 0], [s, s, 0], [0, s, 0],
                     [0, 0, s], [s, 0, s], [s, s, s], [0, s, s]])

edges = [[0, 1], [1, 2], [2, 3], [3, 0],  # bottom face
         [4, 5], [5, 6], [6, 7], [7, 4],  # top face
         [0, 4], [1, 5], [2, 6], [3, 7]]  # connecting edges

for edge in edges:
    ax.plot3D(*zip(*vertices[edge]), color='b')

ax.text(s/2, -0.5, 0, 's', fontsize=14)
ax.text(s, s/2, 0, 's', fontsize=14)
ax.text(0, s, s/2, 's', fontsize=14)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with side length s')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("1")[
    #voiceover("Hier ist unsere Volumenformel für einen Würfel: V gleich s hoch drei.")
  ]
  #only("2")[
    #voiceover("Lass uns das visualisieren. Wir haben einen Würfel mit der Seitenlänge s. Das Volumen ist der Raum innerhalb dieses Würfels, den wir berechnen, indem wir s dreimal mit sich selbst multiplizieren, einmal für jede Dimension.")
  ]
  #only("3")[
    #voiceover("Das ergibt s hoch drei oder s hoch 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Seitenlänge finden 🔍]
  #v(40pt)
  #only("1-")[Gegeben: Volumen (V)]
  #v(10pt)
  #only("2-")[Ziel: Seitenlänge (s) finden]
  #v(20pt)
  #only("3-")[$ V = s^3 $]
  #v(10pt)
  #only("4-")[$ s = root(3, V) $]
  #only("1")[
    #voiceover("Nun, lass uns überprüfen, wie man die Seitenlänge findet, wenn das Volumen gegeben ist.")
  ]
  #only("2")[
    #voiceover("Unser Ziel ist es, s, die Seitenlänge, zu finden, wenn wir V, das Volumen, kennen.")
  ]
  #only("3")[
    #voiceover("Wir beginnen mit unserer Formel: V gleich s hoch drei.")
  ]
  #only("4")[
    #voiceover("Um s zu berechnen, ziehen wir die dritte Wurzel aus beiden Seiten. Das ergibt s gleich die dritte Wurzel von V.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Würfelvolumen: $V = s^3$ 📊]
  #v(10pt)
  #only("2-")[- Seitenlänge: $s = root(3, V)$ 📏]
  #v(10pt)
  #only("3-")[- Die dritte Wurzel hilft, s zu berechnen 🧮]
  #v(10pt)
  #only("4-")[- Denke daran: s ist immer positiv! ➕]
  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir besprochen haben. Das Volumen eines Würfels wird durch V gleich s hoch drei gegeben, wobei s die Seitenlänge ist.")
  ]
  #only("2")[
    #voiceover("Wenn das Volumen gegeben ist und wir die Seitenlänge finden müssen, verwenden wir s gleich die dritte Wurzel von V.")
  ]
  #only("3")[
    #voiceover("Die dritte Wurzel ist hier entscheidend, da sie das Hoch drei in der ursprünglichen Formel 'rückgängig' macht.")
  ]
  #only("4")[
    #voiceover("Denke immer daran, da wir es mit physischen Längen zu tun haben, wird s immer positiv sein.")
  ]
]