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
    Betrachte einen Quader mit den Abmessungen:
    - Länge: 10 m
    - Breite: 4 m
    - Höhe: 3 m
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
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 10, 4, 3

# Defining the vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides' vertices
edges = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plotting the cuboid
for edge in edges:
    X, Y, Z = zip(*edge)
    ax.plot(X, Y, Z, color='b')

# Setting labels
ax.set_xlabel('Length (10 m)')
ax.set_ylabel('Width (4 m)')
ax.set_zlabel('Height (3 m)')

# Setting the viewing angle
ax.view_init(elev=20, azim=45)

plt.title('Cuboid')
plt.tight_layout()
plt.show()
            ```,
            width: 360pt
          ),
          caption: [Quader mit den Abmessungen 10 m x 4 m x 3 m]
        )]
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Berechne die Oberfläche dieses Quaders.
  ]

  #only("1")[
    #voiceover("Betrachte einen Quader mit bestimmten Abmessungen.")
  ]

  #only("2")[
    #voiceover("Hier haben wir einen Quader mit einer Länge von 10 Metern, einer Breite von 4 Metern und einer Höhe von 3 Metern.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Oberfläche dieses Quaders zu berechnen. Denke daran, alle sechs Flächen des Quaders in deine Berechnung einzubeziehen.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Berechne die Oberfläche eines Quaders mit den Abmessungen $10 \\text{ m} \\times 4 \\text{ m} \\times 3 \\text{ m}$.", 
answerOptions: ("$\text{Oberfläche} = 164 \\text{ m}^2$", "$\text{Oberfläche} = -324 \\text{ m}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} \\text{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)