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
    Berechne die Oberfläche eines Quaders mit den Maßen:
    #v(10pt)
    - Länge: 12 m
    - Breite: 7 m
    - Höhe: 5 m
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Oberfläche eines Quaders zu berechnen. Betrachte einen Quader mit den folgenden Maßen: Länge 12 Meter, Breite 7 Meter und Höhe 5 Meter. Deine Aufgabe ist es, die Oberfläche zu berechnen.")
  ]

  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 12, 7, 5

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
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot sides
for side in sides:
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot(x + [x[0]], y + [y[0]], z + [z[0]], color='b')

# Set labels
ax.set_xlabel('Length (12 m)')
ax.set_ylabel('Width (7 m)')
ax.set_zlabel('Height (5 m)')

# Set title
plt.title('Cuboid Dimensions')

# Adjust view angle
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Quader mit den Maßen 12m x 7m x 5m],
      )
    ]
  ]]

  #only("2")[
    #voiceover("Hier ist eine visuelle Darstellung unseres Quaders. Denke daran, um die Oberfläche zu berechnen, müssen wir die Fläche aller sechs Seiten berechnen und addieren. Viel Erfolg bei der Berechnung!")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Berechne die Oberfläche eines Quaders mit den Maßen $12 \\text{ m} \\times 7 \\text{ m} \\times 5 \\text{ m}$.", 
answerOptions: ("$\text{Oberfläche} = 382 \\text{ m}^2$", "$\text{Oberfläche} = -760 \\text{ m}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} \\text{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)