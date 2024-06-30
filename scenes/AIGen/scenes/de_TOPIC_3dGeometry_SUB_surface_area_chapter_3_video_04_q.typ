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
    Betrachte einen Quader mit den folgenden Abmessungen:
    - Länge: 7 cm
    - Breite: 4 cm
    - Oberfläche: 146 cm²
  ]

  #v(20pt)

  #only("2-")[
    #text(fill: blue)[Frage: Wie hoch ist der Quader? 🤔]
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem betrachten, das die Oberfläche eines Quaders betrifft.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Länge von 7 Zentimetern, einer Breite von 4 Zentimetern und einer Gesamtoberfläche von 146 Quadratzentimetern. Deine Aufgabe ist es, die Höhe dieses Quaders zu bestimmen. Überlege, wie Du die Formel für die Oberfläche verwenden kannst, um dieses Problem zu lösen.")
  ]

  #only("3-")[
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
l, w, h = 7, 4, 5  # height is arbitrary for visualization

# Define the vertices of the cuboid
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

# Define the edges
edges = [
    [vertices[0], vertices[1], vertices[2], vertices[3], vertices[0]],  # Bottom face
    [vertices[4], vertices[5], vertices[6], vertices[7], vertices[4]],  # Top face
    [vertices[0], vertices[4]],  # Vertical edges
    [vertices[1], vertices[5]],
    [vertices[2], vertices[6]],
    [vertices[3], vertices[7]]
]

# Plot the edges
for edge in edges:
    ax.plot3D(*zip(*edge), color='b')

# Add labels
ax.text(l/2, -1, 0, "Length: 7 cm", fontsize=10)
ax.text(l+0.5, w/2, 0, "Width: 4 cm", fontsize=10)
ax.text(-1, w/2, h/2, "Height: ?", fontsize=10, color='red')

# Set the limits and labels
ax.set_xlim(0, l+2)
ax.set_ylim(0, w+2)
ax.set_zlim(0, h+2)
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Set the title
plt.title("Cuboid with Unknown Height")

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Quader mit gegebener Länge und Breite, aber unbekannter Höhe],
      )
    ]
  ]]

  #only("3")[
    #voiceover("Hier ist eine visuelle Darstellung unseres Quaders. Wir kennen seine Länge und Breite, aber die Höhe müssen wir herausfinden. Denke daran, dass die Oberfläche alle sechs Flächen des Quaders umfasst. Viel Erfolg beim Lösen dieses Problems!")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Die Oberfläche eines Quaders beträgt $146 	ext{ cm}^2$. Wenn seine Länge $7 	ext{ cm}$ und seine Breite $4 	ext{ cm}$ beträgt, wie hoch ist er dann?", 
answerOptions: ("$h = 3 \\text{ cm}$", "$h = -2 \\text{ cm}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$h = \key{a} \\text{ cm}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)