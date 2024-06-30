#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cube]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np
from itertools import product, combinations

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 8]
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s-e)) == r[1]-r[0]:
        ax.plot3D(*zip(s, e), color="b")

# Highlight one face
verts = [(0, 0, 0), (0, 8, 0), (8, 8, 0), (8, 0, 0)]
ax.add_collection3d(Poly3DCollection([verts], facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Side Length 8 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Not quite. Let's review the correct solution step by step. We're dealing with a cube that has a side length of 8 centimeters. Here's a visual representation of our cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cube = 6 × (Side Length)²]
  #v(20pt)
  #only("2-")[- $"SA" = 6s^2$, where $s$ is the side length]
  #only("1")[
    #voiceover("The first step is to recall the formula for the surface area of a cube. The surface area of a cube is equal to six times the square of its side length.")
  ]
  #only("2")[
    #voiceover("We can write this as S A equals 6 s squared, where s represents the side length.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Values]
  #v(40pt)
  #only("1-")[- Side length, $s = 8"cm"$]
  #v(20pt)
  #only("2-")[- $"SA" = 6 × (8"cm")^2$]
  #only("1")[
    #voiceover("Now, let's plug in our known value. We're given that the side length is 8 centimeters.")
  ]
  #only("2")[
    #voiceover("So we substitute 8 centimeters for s in our formula. This gives us: Surface Area equals 6 times 8 centimeters squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $"SA" = 6 × (8"cm")^2$]
  #v(20pt)
  #only("2-")[- $"SA" = 6 × 64"cm"^2$]
  #v(20pt)
  #only("3-")[- $"SA" = 384"cm"^2$]
  #only("1")[
    #voiceover("Now let's calculate. First, we square 8 centimeters.")
  ]
  #only("2")[
    #voiceover("8 centimeters squared is 64 square centimeters. So our equation becomes 6 times 64 square centimeters.")
  ]
  #only("3")[
    #voiceover("Finally, we multiply by 6. 6 times 64 is 384. Therefore, the surface area is 384 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cube is $384"cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are important!]
  #only("1")[
    #voiceover("So our final answer is that the surface area of the cube is 384 square centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's crucial to include the correct units in your answer. Here, we're dealing with area, so our units are square centimeters.")
  ]
]