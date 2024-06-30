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
    Betrachte einen Quader mit:
    - Länge: 9 cm
    - Breite: 5 cm
    - Höhe: 3 cm
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
      #box()[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

              import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np
from itertools import combinations

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 9, 5, 3

# Create vertices
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Define faces
faces = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot faces
for face in faces:
    ax.add_collection3d(Poly3DCollection([face], alpha=0.5, facecolors='cyan', edgecolors='r'))

# Plot edges
for s, e in combinations(vertices, 2):
    if np.sum(np.abs(s - e)) in [l, w, h]:
        ax.plot3D(*zip(s, e), color="b")

# Set labels
ax.set_xlabel('Length (9 cm)')
ax.set_ylabel('Width (5 cm)')
ax.set_zlabel('Height (3 cm)')

# Set limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

plt.title('Cuboid')
plt.show()
            ```,
            width: 360pt
          ),
          caption: [Quader mit den Maßen 9 cm × 5 cm × 3 cm],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Frage: Was ist die Oberfläche dieses Quaders? 🤔
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem betrachten, das die Oberfläche eines Quaders betrifft.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Länge von 9 Zentimetern, einer Breite von 5 Zentimetern und einer Höhe von 3 Zentimetern. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]

  #only("3")[
    #voiceover("Nun ist es Deine Aufgabe, die Oberfläche dieses Quaders zu berechnen. Denke daran, dass die Oberfläche alle sechs Flächen des Quaders umfasst. Überlege, wie Du dieses Problem angehen würdest!")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Ein Quader hat eine Länge von $9$ cm, eine Breite von $5$ cm und eine Höhe von $3$ cm. Was ist seine Oberfläche?", 
answerOptions: ("$\text{Oberfläche} = 174$", "$\text{Oberfläche} = -344$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)