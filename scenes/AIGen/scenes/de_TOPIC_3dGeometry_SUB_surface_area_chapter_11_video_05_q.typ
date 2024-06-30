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
    - Oberfläche: 400 cm²
    - Länge: 16 cm
    - Breite: 10 cm
    - Höhe: h cm
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
      #box(width: 300pt, height: 200pt)[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

            import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 16, 10, 5  # Using h=5 for visualization

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides' polygons
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[2], vertices[3], vertices[7], vertices[6]]
]

# Plot sides
poly3d = [[(vertex[0], vertex[1], vertex[2]) for vertex in side] for side in sides]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='skyblue', linewidths=1, edgecolors='navy', alpha=0.6))

# Set labels
ax.set_xlabel('Length (16 cm)')
ax.set_ylabel('Width (10 cm)')
ax.set_zlabel('Height (h cm)')

# Set title
plt.title('Cuboid with Unknown Height')

# Adjust view angle
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
            ```,
            width: 300pt
          ),
          caption: [Quader mit unbekannter Höhe],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Finde die Höhe (h) des Quaders.
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem über die Oberfläche eines Quaders lösen.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Oberfläche von 400 Quadratzentimetern. Seine Länge beträgt 16 Zentimeter und seine Breite 10 Zentimeter. Die Höhe ist unbekannt und wird durch h dargestellt.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Höhe dieses Quaders zu finden. Verwende die gegebenen Informationen über die Oberfläche und die bekannten Abmessungen, um die unbekannte Höhe h zu berechnen.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Ein Quader hat eine Oberfläche von $400 	ext{ cm}^2$ und Abmessungen von $16 	ext{ cm} 	imes 10 	ext{ cm} 	imes h$. Wie hoch ist $(h)$?", 
answerOptions: ("$h = 4$", "$h = -4$"), 
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