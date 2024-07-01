#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Volumen von Quadern 📦]
  #v(40pt)
  #only("1-")[- Quader sind 3D-Formen mit rechteckigen Flächen 🧊]
  #only("2-")[- Das Volumen misst den Raum innerhalb eines 3D-Objekts 🌟]
  #only("3-")[- Lass uns überprüfen, wie man das Volumen eines Quaders berechnet 🧮]
  
  #only("1")[
    #voiceover("Lass uns das Konzept des Volumens für Quader überprüfen. Quader, auch als rechteckige Prismen bekannt, sind dreidimensionale Formen mit sechs rechteckigen Flächen.")
  ]
  #only("2")[
    #voiceover("Das Volumen ist ein Maß für den Raum innerhalb eines dreidimensionalen Objekts.")
  ]
  #only("3")[
    #voiceover("Wir werden Schritt für Schritt überprüfen, wie man das Volumen eines Quaders berechnet.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quaderabmessungen]
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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Vertices of the cuboid
vertices = np.array([
    [0, 0, 0],
    [l, 0, 0],
    [l, w, 0],
    [0, w, 0],
    [0, 0, h],
    [l, 0, h],
    [l, w, h],
    [0, w, h]
])

# Plot vertices
ax.scatter3D(vertices[:, 0], vertices[:, 1], vertices[:, 2])

# List of edges to plot
edges = [
    [0, 1], [1, 2], [2, 3], [3, 0],  # Bottom face
    [4, 5], [5, 6], [6, 7], [7, 4],  # Top face
    [0, 4], [1, 5], [2, 6], [3, 7]   # Connecting edges
]

# Plot edges
for edge in edges:
    ax.plot3D(*zip(*vertices[edge]), color="b")

# Label dimensions
ax.text(l/2, -0.5, 0, "Length (l)", fontsize=10)
ax.text(l+0.5, w/2, 0, "Width (w)", fontsize=10)
ax.text(0, w+0.5, h/2, "Height (h)", fontsize=10)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

plt.title("Cuboid Dimensions")
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  
  #only("1")[
    #voiceover("Ein Quader hat drei wichtige Abmessungen: Länge, Breite und Höhe. In diesem Diagramm sehen wir diese Abmessungen als l für Länge, w für Breite und h für Höhe gekennzeichnet.")
  ]
  #only("2")[
    #voiceover("Um das Volumen eines Quaders zu berechnen, müssen wir diese drei Abmessungen miteinander multiplizieren.")
  ]
  #only("3")[
    #voiceover("Das ergibt die Formel: Volumen gleich Länge mal Breite mal Höhe.")
  ]
  
  #v(20pt)
  #only("3-")[Volumenformel: $V = l dot w dot h$]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispielrechnung 🧮]
  #v(40pt)
  #only("1-")[Gegeben: Quader mit]
  #only("2-")[- Länge (l) = 5 cm]
  #only("3-")[- Breite (w) = 3 cm]
  #only("4-")[- Höhe (h) = 2 cm]
  #v(20pt)
  #only("5-")[Volumen $V = l dot w dot h$]
  #only("6-")[$V = 5 "cm" dot 3 "cm" dot 2 "cm"$]
  #only("7-")[$V = 30 "cm"^3$]
  
  #only("1")[
    #voiceover("Lass uns ein Beispiel durchgehen, um das Volumen eines Quaders zu berechnen.")
  ]
  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Länge von 5 Zentimetern,")
  ]
  #only("3")[
    #voiceover("einer Breite von 3 Zentimetern,")
  ]
  #only("4")[
    #voiceover("und einer Höhe von 2 Zentimetern.")
  ]
  #only("5")[
    #voiceover("Wir verwenden unsere Volumenformel: Volumen gleich Länge mal Breite mal Höhe.")
  ]
  #only("6")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 5 Zentimeter mal 3 Zentimeter mal 2 Zentimeter.")
  ]
  #only("7")[
    #voiceover("Multiplizieren wir diese miteinander, erhalten wir ein Volumen von 30 Kubikzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Volumen eines Quaders: $V = l dot w dot h$ 📏]
  #only("2-")[- Multipliziere Länge, Breite und Höhe 🔢]
  #only("3-")[- Einheiten sind kubisch (z.B. cm³, m³) 📊]
  #only("4-")[- Nützlich für Anwendungen im Alltag 🏠🎁]
  
  #only("1")[
    #voiceover("Zusammenfassend wird das Volumen eines Quaders berechnet, indem man seine Länge, Breite und Höhe multipliziert.")
  ]
  #only("2")[
    #voiceover("Denke daran, immer alle drei Abmessungen miteinander zu multiplizieren.")
  ]
  #only("3")[
    #voiceover("Die resultierenden Einheiten sind kubisch, wie zum Beispiel Kubikzentimeter oder Kubikmeter.")
  ]
  #only("4")[
    #voiceover("Diese Formel ist unglaublich nützlich für viele Anwendungen im Alltag, von der Berechnung des Raums in einem Zimmer bis zur Bestimmung der Größe eines Pakets.")
  ]
]