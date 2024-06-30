#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Volume of Cubes 📦]
  #v(40pt)
  #only("1-")[- Cubes are 3D shapes with equal sides 🧊]
  #only("2-")[- Volume measures the space inside 🌟]
  #only("3-")[- Let's review how to calculate it 🧮]

  #only("1")[
    #voiceover("Let's review the concept of volume for cubes. Cubes are three-dimensional shapes where all sides are equal.")
  ]
  #only("2")[
    #voiceover("The volume of a cube measures the amount of space inside it.")
  ]
  #only("3")[
    #voiceover("We'll review how to calculate this volume step by step.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cube Properties]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
from itertools import product, combinations

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 1]
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s - e)) == r[1] - r[0]:
        ax.plot3D(*zip(s, e), color="b")

# Label
ax.text(0.5, -0.1, 0, "s", size=20, zorder=1)
ax.text(1.1, 0.5, 0, "s", size=20, zorder=1)
ax.text(0, 0.5, 1.1, "s", size=20, zorder=1)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

plt.tight_layout()
plt.show()
          ```,
          width: 300pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("2-")[- All sides have equal length $s$]
  #only("3-")[- All faces are squares]
  #only("4-")[- 8 vertices, 12 edges, 6 faces]

  #only("1")[
    #voiceover("Here's a cube. Notice its key properties:")
  ]
  #only("2")[
    #voiceover("All sides of a cube have the same length, which we often call s for side length.")
  ]
  #only("3")[
    #voiceover("Because of this, all faces of a cube are perfect squares.")
  ]
  #only("4")[
    #voiceover("A cube has 8 vertices where edges meet, 12 edges in total, and 6 square faces.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Volume]
  #v(20pt)
  #only("1-")[Volume formula: $V = s^3$]
  #v(10pt)
  #only("2-")[Where $s$ is the side length]
  #v(20pt)
  #only("3-")[Example: Cube with $s = 4$ cm]
  #only("4-")[$V = 4^3 = 4 dot 4 dot 4 = 64$ cm³]

  #only("1")[
    #voiceover("Now, let's review how to calculate the volume of a cube. The formula for the volume of a cube is V equals s cubed,")
  ]
  #only("2")[
    #voiceover("where s is the length of one side of the cube.")
  ]
  #only("3")[
    #voiceover("Let's look at an example. Suppose we have a cube with a side length of 4 centimeters.")
  ]
  #only("4")[
    #voiceover("To find its volume, we cube 4. That's 4 times 4 times 4, which equals 64 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Cube: 3D shape with equal sides 🧊]
  #only("2-")[- Volume formula: $V = s^3$ 🔢]
  #only("3-")[- $s$ is the side length 📏]
  #only("4-")[- Units are cubic (e.g., cm³, m³) 📊]

  #only("1")[
    #voiceover("Let's recap what we've reviewed. A cube is a three-dimensional shape with all sides equal.")
  ]
  #only("2")[
    #voiceover("The volume of a cube is calculated by cubing the side length. That's s cubed.")
  ]
  #only("3")[
    #voiceover("Remember, s represents the length of one side of the cube.")
  ]
  #only("4")[
    #voiceover("Finally, the units for volume are always cubic, like cubic centimeters or cubic meters.")
  ]
]