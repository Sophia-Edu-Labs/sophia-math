#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cuboid]
  #v(40pt)

  #only("1-")[
    Consider a cuboid with:
    - Length: 9 cm
    - Width: 5 cm
    - Height: 3 cm
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
          caption: [Cuboid with dimensions 9 cm × 5 cm × 3 cm],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Question: What is the surface area of this cuboid? 🤔
  ]

  #only("1")[
    #voiceover("Let's consider a problem involving the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a length of 9 centimeters, a width of 5 centimeters, and a height of 3 centimeters. Here's a visual representation of our cuboid.")
  ]

  #only("3")[
    #voiceover("Now, your task is to calculate the surface area of this cuboid. Remember, the surface area includes all six faces of the cuboid. Think about how you would approach this problem!")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "A cuboid has a length of $9$ cm, a width of $5$ cm, and a height of $3$ cm. What is its surface area?", 
answerOptions: ("$\text{Surface Area} = 174$", "$\text{Surface Area} = -344$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)