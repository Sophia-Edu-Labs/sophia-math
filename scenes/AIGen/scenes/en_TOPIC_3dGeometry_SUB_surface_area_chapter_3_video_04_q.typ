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
    Consider a cuboid with the following dimensions:
    - Length: 7 cm
    - Width: 4 cm
    - Surface Area: 146 cm²
  ]

  #v(20pt)

  #only("2-")[
    #text(fill: blue)[Question: What is the height of the cuboid? 🤔]
  ]

  #only("1")[
    #voiceover("Let's consider a problem involving the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We're given a cuboid with a length of 7 centimeters, a width of 4 centimeters, and a total surface area of 146 square centimeters. Your task is to determine the height of this cuboid. Think about how you can use the surface area formula to solve this problem.")
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
        caption: [Cuboid with given length and width, but unknown height],
      )
    ]
  ]]

  #only("3")[
    #voiceover("Here's a visual representation of our cuboid. We know its length and width, but the height is what we need to find. Remember, the surface area includes all six faces of the cuboid. Good luck solving this problem!")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A cuboid's surface area is $146 	ext{ cm}^2$. If its length is $7 	ext{ cm}$ and its width is $4 	ext{ cm}$, what is its height?", 
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