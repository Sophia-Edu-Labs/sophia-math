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
    Ein Quader hat:
    - Oberfläche: 198 m²
    - Länge: 9 m
    - Breite: 5 m
    - Höhe: h
  ]

  #v(20pt)

  #only("2-")[
    #text(fill: blue)[Finde die Höhe (h) des Quaders.]
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem über die Oberfläche eines Quaders lösen.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Oberfläche von 198 Quadratmetern. Seine Länge beträgt 9 Meter und seine Breite 5 Meter. Kannst du die Höhe dieses Quaders bestimmen?")
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
l, w, h = 9, 5, 4  # We use a placeholder value for h

# Vertices of the cuboid
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Plot vertices
ax.scatter3D(vertices[:, 0], vertices[:, 1], vertices[:, 2])

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
    side_with_closure = side + [side[0]]  # Create a new list with closure
    xs, ys, zs = zip(*side_with_closure)
    ax.plot(xs, ys, zs, 'b-')

# Label dimensions
ax.text(l/2, -0.5, 0, '9 m', ha='center')
ax.text(l+0.5, w/2, 0, '5 m', ha='center')
ax.text(l+0.5, 0, h/2, 'h', ha='center')

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid with Unknown Height')
plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Quader mit den Maßen 9m x 5m x h],
      )
    ]
  ]]

  #only("3")[
    #voiceover("Hier ist eine visuelle Darstellung unseres Quaders. Wir kennen seine Länge und Breite, aber wir müssen seine Höhe finden. Denke daran, dass die Oberfläche die Gesamtfläche aller sechs Seiten des Quaders ist.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Ein Quader hat eine Oberfläche von $198 	ext{ m}^2$ und Abmessungen von $9 	ext{ m} 	imes 5 	ext{ m} 	imes h$. Was ist die Höhe $(h)$?", 
answerOptions: ("$h = 2$", "$h = 0$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$h = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)