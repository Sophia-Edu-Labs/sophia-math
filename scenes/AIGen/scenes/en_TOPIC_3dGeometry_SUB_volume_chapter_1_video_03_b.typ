#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cube Edge Length]
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

# Plot edges
for edge in edges:
    ax.plot3D(*zip(*vertices[edge]), color="blue")

# Highlight one edge
ax.plot3D(*zip(*vertices[[0, 1]]), color="red", linewidth=3)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Edge Length Highlighted')

# Remove tick labels
ax.set_xticklabels([])
ax.set_yticklabels([])
ax.set_zticklabels([])

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #v(20pt)
  #only("2-")[Volume of cube: $V = 512 "cm"^3$]
  #v(20pt)
  #only("3-")[Find: Edge length $s$]
  #only("1")[
    #voiceover("It looks like there was a mistake. Let's walk through the correct solution step-by-step. We're dealing with a cube, which is a three-dimensional shape where all edges have the same length. Here's a visualization of a cube with one edge highlighted in red.")
  ]
  #only("2")[
    #voiceover("We're given that the volume of the cube is 512 cubic centimeters.")
  ]
  #only("3")[
    #voiceover("Our task is to find the length of one edge, which we'll call s.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[Volume of a cube: $V = s^3$]
  #v(20pt)
  #only("2-")[Where $s$ is the length of one edge]
  #only("1")[
    #voiceover("The first step is to recall the formula for the volume of a cube. The volume of a cube is equal to the cube of its edge length.")
  ]
  #only("2")[
    #voiceover("In this formula, s represents the length of one edge of the cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Known Values]
  #v(40pt)
  #only("1-")[$512 "cm"^3 = s^3$]
  #only("1")[
    #voiceover("Now, let's substitute the known value into our formula. We know that the volume is 512 cubic centimeters, so we can write: 512 cubic centimeters equals s cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Solve for s]
  #v(40pt)
  #only("1-")[$s = root(3, 512 "cm"^3)$]
  #v(20pt)
  #only("2-")[$s = 8 "cm"$]
  #only("1")[
    #voiceover("To solve for s, we need to take the cube root of both sides. The cube root is the inverse operation of cubing a number.")
  ]
  #only("2")[
    #voiceover("When we calculate the cube root of 512, we get 8. Therefore, the length of one edge of the cube is 8 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[The length of one edge of the cube is 8 cm. ✅]
  #v(20pt)
  #only("2-")[💡 Always include units in your answer!]
  #only("1")[
    #voiceover("So, our final answer is that the length of one edge of the cube is 8 centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's always important to include the correct units in your answer. In this case, since we're dealing with length, our units are centimeters.")
  ]
]