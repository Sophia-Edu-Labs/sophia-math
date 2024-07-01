#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns eine Übung zur Berechnung des Volumens eines Quaders angehen.")
  ]
  #text(size: 30pt, weight: "bold")[Volumen eines Quaders]
  #v(40pt)

  #only("2-")[
    Berechne das Volumen eines Quaders mit den Maßen:
    #v(10pt)
    - Länge: 10 m
    - Breite: 4 m
    - Höhe: 3 m
  ]

  #only("2")[
    #voiceover("Berechne das Volumen eines Quaders mit den folgenden Maßen: Die Länge beträgt 10 Meter, die Breite 4 Meter und die Höhe 3 Meter.")
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
l, w, h = 10, 4, 3

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
    ax.plot(*zip(*edge), color='b')

# Add labels
ax.text(l/2, -1, 0, '10 m', ha='center')
ax.text(l+0.5, w/2, 0, '4 m', va='center')
ax.text(l, w+0.5, h/2, '3 m', va='center', ha='left')

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid Dimensions')
plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]
  ]

  #only("3")[
    #voiceover("Hier ist eine visuelle Darstellung unseres Quaders. Denke daran, um das Volumen zu berechnen, müssen wir seine Länge, Breite und Höhe multiplizieren.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Berechne das Volumen eines Quaders mit den Maßen $10 	ext{ m} 	imes 4 	ext{ m} 	imes 3 	ext{ m}$.", 
answerOptions: ("$\\text{Volumen} = 120 	ext{ m}^3$", "$\\text{Volumen} = -236 	ext{ m}^3$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volumen} = \key{a} 	ext{ m}^3$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)