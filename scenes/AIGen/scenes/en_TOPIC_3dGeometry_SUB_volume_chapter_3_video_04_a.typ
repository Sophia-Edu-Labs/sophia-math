#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cuboid]
  #v(40pt)
  #only("1-")[
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
l, w, h = 7, 4, 5

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
    face = np.array(face)  # Convert face to NumPy array
    ax.add_collection3d(Poly3DCollection([face], alpha=0.5, facecolors='cyan', edgecolors='r'))

# Plot edges
for s, e in combinations(vertices, 2):
    if np.sum(np.abs(s-e)) in [l, w, h]:
        ax.plot3D(*zip(s, e), color="b")

# Set labels
ax.set_xlabel('Length (7 cm)')
ax.set_ylabel('Width (4 cm)')
ax.set_zlabel('Height (5 cm)')
ax.set_title('Cuboid')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job! You've correctly calculated the volume of the cuboid. Let's go through the solution step by step. We have a cuboid with a length of 7 centimeters, a width of 4 centimeters, and a height of 5 centimeters. Here's a visual representation of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Volume of a cuboid = Length × Width × Height]
  #v(20pt)
  #only("2-")[- $V = l × w × h$]
  #only("1")[
    #voiceover("The first step is to recall the formula for the volume of a cuboid. The volume of a cuboid is equal to its length multiplied by its width multiplied by its height.")
  ]
  #only("2")[
    #voiceover("We can write this as V equals l times w times h, where V represents volume, l is length, w is width, and h is height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Values]
  #v(40pt)
  #only("1-")[- Length, $l = 7"cm"$]
  #v(10pt)
  #only("2-")[- Width, $w = 4"cm"$]
  #v(10pt)
  #only("3-")[- Height, $h = 5"cm"$]
  #v(20pt)
  #only("4-")[- $V = 7"cm" × 4"cm" × 5"cm"$]
  #only("1")[
    #voiceover("Now, let's substitute our known values. We're given that the length is 7 centimeters,")
  ]
  #only("2")[
    #voiceover("the width is 4 centimeters,")
  ]
  #only("3")[
    #voiceover("and the height is 5 centimeters.")
  ]
  #only("4")[
    #voiceover("Substituting these into our formula, we get: Volume equals 7 centimeters times 4 centimeters times 5 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $V = 7"cm" × 4"cm" × 5"cm"$]
  #v(20pt)
  #only("2-")[- $V = 28"cm"^2 × 5"cm"$]
  #v(20pt)
  #only("3-")[- $V = 140"cm"^3$]
  #only("1")[
    #voiceover("Let's calculate step by step. First, we multiply 7 by 4.")
  ]
  #only("2")[
    #voiceover("7 times 4 is 28, so our equation becomes 28 square centimeters times 5 centimeters.")
  ]
  #only("3")[
    #voiceover("Finally, we multiply by 5. 28 times 5 is 140. So our final answer is 140 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The volume of the cuboid is $140"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are crucial!]
  #only("1")[
    #voiceover("So, our final answer is that the volume of the cuboid is 140 cubic centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's crucial to include the correct units in your answer. Here, we're dealing with volume, so our units are cubic centimeters. Great job on solving this problem!")
  ]
]