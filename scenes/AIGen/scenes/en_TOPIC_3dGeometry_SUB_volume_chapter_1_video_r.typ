#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Volume of Cubes 📦]
  #v(40pt)
  #only("1-")[- Cube: 3D shape with equal sides 🧊]
  #only("2-")[- Volume: Space inside the cube 🌟]
  #only("3-")[- Formula: $V = s^3$ (s = side length) 📏]
  #only("1")[
    #voiceover("Let's review the concept of volume for cubes. A cube is a three-dimensional shape where all sides are equal.")
  ]
  #only("2")[
    #voiceover("The volume of a cube represents the space inside it.")
  ]
  #only("3")[
    #voiceover("We calculate this volume using the formula V equals s cubed, where s is the length of one side of the cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume Formula 📐]
  #v(40pt)
  #only("1-")[
    #align(center)[$ V = s^3 $]
  ]
  #v(20pt)
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube
s = 2
vertices = np.array([[0, 0, 0], [s, 0, 0], [s, s, 0], [0, s, 0],
                     [0, 0, s], [s, 0, s], [s, s, s], [0, s, s]])

edges = [[0, 1], [1, 2], [2, 3], [3, 0],  # bottom face
         [4, 5], [5, 6], [6, 7], [7, 4],  # top face
         [0, 4], [1, 5], [2, 6], [3, 7]]  # connecting edges

for edge in edges:
    ax.plot3D(*zip(*vertices[edge]), color='b')

ax.text(s/2, -0.5, 0, 's', fontsize=14)
ax.text(s, s/2, 0, 's', fontsize=14)
ax.text(0, s, s/2, 's', fontsize=14)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with side length s')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("1")[
    #voiceover("Here's our volume formula for a cube: V equals s cubed.")
  ]
  #only("2")[
    #voiceover("Let's visualize this. We have a cube with side length s. The volume is the space inside this cube, which we calculate by multiplying s by itself three times, once for each dimension.")
  ]
  #only("3")[
    #voiceover("This gives us s cubed, or s to the power of 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding Side Length 🔍]
  #v(40pt)
  #only("1-")[Given: Volume (V)]
  #v(10pt)
  #only("2-")[Goal: Find side length (s)]
  #v(20pt)
  #only("3-")[$ V = s^3 $]
  #v(10pt)
  #only("4-")[$ s = root(3, V) $]
  #only("1")[
    #voiceover("Now, let's review how to find the side length when we're given the volume.")
  ]
  #only("2")[
    #voiceover("Our goal is to find s, the side length, when we know V, the volume.")
  ]
  #only("3")[
    #voiceover("We start with our formula: V equals s cubed.")
  ]
  #only("4")[
    #voiceover("To solve for s, we take the cube root of both sides. This gives us s equals the cube root of V.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Cube volume: $V = s^3$ 📊]
  #v(10pt)
  #only("2-")[- Side length: $s = root(3, V)$ 📏]
  #v(10pt)
  #only("3-")[- Cube root helps solve for s 🧮]
  #v(10pt)
  #only("4-")[- Remember: s is always positive! ➕]
  #only("1")[
    #voiceover("Let's recap what we've reviewed. The volume of a cube is given by V equals s cubed, where s is the side length.")
  ]
  #only("2")[
    #voiceover("If we're given the volume and need to find the side length, we use s equals the cube root of V.")
  ]
  #only("3")[
    #voiceover("The cube root is crucial here as it 'undoes' the cubing in the original formula.")
  ]
  #only("4")[
    #voiceover("Always remember, since we're dealing with physical lengths, s will always be positive.")
  ]
]