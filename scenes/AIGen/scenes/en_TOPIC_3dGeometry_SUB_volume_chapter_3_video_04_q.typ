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
    - Length: 7 cm
    - Width: 4 cm
    - Height: 5 cm
  ]

  #only("2")[
    #voiceover("Calculate the volume of a cuboid with the following dimensions: length is 7 centimeters, width is 4 centimeters, and height is 5 centimeters.")
  ]

  #v(20pt)

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
l, w, h = 7, 4, 5

# Cuboid vertices
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Cuboid faces
faces = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot cuboid
for face in faces:
    x, y, z = zip(*face)
    ax.plot_surface(np.array([x]), np.array([y]), np.array([z]), alpha=0.5)

# Set labels
ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')

# Set limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

# Add dimensions
ax.text(l/2, -1, 0, '7 cm', ha='center')
ax.text(l+0.5, w/2, 0, '4 cm', ha='center')
ax.text(l, w+0.5, h/2, '5 cm', ha='center', va='center')

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
    #voiceover("Here's a visual representation of our cuboid. Remember, to find the volume, we need to multiply these three dimensions together.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the volume of a cuboid with length $7 	ext{ cm}$, width $4 	ext{ cm}$, and height $5 	ext{ cm}$?", 
answerOptions: ("$\text{Volume} = 140 \\text{ cm}^3$", "$\text{Volume} = -276 \\text{ cm}^3$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Volume} = \key{a} \\text{ cm}^3$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)