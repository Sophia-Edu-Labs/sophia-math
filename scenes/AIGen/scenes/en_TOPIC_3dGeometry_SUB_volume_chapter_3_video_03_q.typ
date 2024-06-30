#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's tackle an exercise on calculating the volume of a cuboid.")
  ]
  #text(size: 30pt, weight: "bold")[Volume of a Cuboid]
  #v(40pt)

  #only("2-")[
    Calculate the volume of a cuboid with dimensions:
    #v(10pt)
    - Length: 10 m
    - Width: 4 m
    - Height: 3 m
  ]

  #only("2")[
    #voiceover("Calculate the volume of a cuboid with the following dimensions: length is 10 meters, width is 4 meters, and height is 3 meters.")
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
    #voiceover("Here's a visual representation of our cuboid. Remember, to find its volume, we need to multiply its length, width, and height.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the volume of a cuboid with dimensions $10 	ext{ m} 	imes 4 	ext{ m} 	imes 3 	ext{ m}$.", 
answerOptions: ("$\\text{Volume} = 120 	ext{ m}^3$", "$\\text{Volume} = -236 	ext{ m}^3$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volume} = \key{a} 	ext{ m}^3$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)