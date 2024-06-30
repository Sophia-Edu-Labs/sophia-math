#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's solve an exercise about the volume of a cuboid.")
  ]
  #text(size: 30pt, weight: "bold")[Volume of a Cuboid]
  #v(40pt)

  #only("2-")[
    Calculate the volume of a cuboid with:
    - Length: 5 cm
    - Width: 3 cm
    - Height: 4 cm
  ]

  #only("2")[
    #voiceover("Calculate the volume of a cuboid with the following dimensions: length 5 centimeters, width 3 centimeters, and height 4 centimeters.")
  ]

  #only("3-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 5, 3, 4

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

# Define the faces of the cuboid
faces = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot the cuboid
poly3d = [face for face in faces]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels and title
ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Cuboid')

# Set axis limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

# Add dimension labels
ax.text(l/2, -1, 0, '5 cm', ha='center')
ax.text(l+0.5, w/2, 0, '3 cm', va='center')
ax.text(l, w, h/2, '4 cm', ha='left', va='center')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  ]

  #only("3")[
    #voiceover("Here's a visual representation of the cuboid with its given dimensions. Remember, we need to find its volume.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the volume of a cuboid with length $5$ cm, width $3$ cm, and height $4$ cm?", 
answerOptions: ("$\\text{Volume} = 60$", "$\\text{Volume} = -116$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volume} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)