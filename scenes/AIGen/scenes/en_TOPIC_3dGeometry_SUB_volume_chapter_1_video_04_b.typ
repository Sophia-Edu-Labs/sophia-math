#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Volume of a Cube]
#v(40pt)
#only("1-")[
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])

# Cube edges
edges = [[0, 1], [1, 2], [2, 3], [3, 0],
         [4, 5], [5, 6], [6, 7], [7, 4],
         [0, 4], [1, 5], [2, 6], [3, 7]]

# Plot cube
for edge in edges:
    ax.plot3D(*zip(*vertices[edge]), color="blue")

# Label vertices
for i, (x, y, z) in enumerate(vertices):
    ax.text(x, y, z, f'({x},{y},{z})', fontsize=8)

# Label edges
ax.text(0.5, 0, 0, '9 cm', fontsize=10, color='red')
ax.text(0, 0.5, 0, '9 cm', fontsize=10, color='red')
ax.text(0, 0, 0.5, '9 cm', fontsize=10, color='red')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Side Length 9 cm')

plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]]
#only("1")[
#voiceover("Let's review the correct solution step by step. We're dealing with a cube that has a side length of 9 centimeters. Here's a visualization of our cube.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
#v(40pt)
#only("1-")[- Volume of a cube = (Side length)³]
#v(20pt)
#only("2-")[- $V = s^3$, where $s$ is the side length]
#only("1")[
#voiceover("The first step is to recall the formula for the volume of a cube. The volume of a cube is equal to its side length cubed.")
]
#only("2")[
#voiceover("We can write this as V equals s cubed, where s represents the side length.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Plug in the Value]
#v(40pt)
#only("1-")[- Side length, $s = 9"cm"$]
#v(20pt)
#only("2-")[- $V = (9"cm")^3$]
#only("1")[
#voiceover("Now, let's plug in our known value. We're given that the side length is 9 centimeters.")
]
#only("2")[
#voiceover("So we substitute 9 centimeters for s in our formula. This gives us: Volume equals 9 centimeters cubed.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Calculate]
#v(40pt)
#only("1-")[- $V = (9"cm")^3$]
#v(20pt)
#only("2-")[- $V = 9"cm" dot 9"cm" dot 9"cm"$]
#v(20pt)
#only("3-")[- $V = 729"cm"^3$]
#only("1")[
#voiceover("Now let's calculate. We need to cube 9 centimeters.")
]
#only("2")[
#voiceover("This means we multiply 9 centimeters by itself three times.")
]
#only("3")[
#voiceover("9 times 9 is 81, and 81 times 9 is 729. So the volume is 729 cubic centimeters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[#text(size: 24pt)[The volume of the cube is $729"cm"^3$]]
#v(40pt)
#only("2-")[💡 Remember: Units are crucial!]
#only("1")[
#voiceover("So our final answer is that the volume of the cube is 729 cubic centimeters.")
]
#only("2")[
#voiceover("Remember, it's important to include the correct units in your answer. Here we're dealing with volume, so our units are cubic centimeters.")
]
]