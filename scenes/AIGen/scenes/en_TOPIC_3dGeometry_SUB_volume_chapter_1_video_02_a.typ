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
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]], dtype=float)

# Scale vertices
vertices *= 5.5

# Cube faces
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_xlim(0, 5.5)
ax.set_ylim(0, 5.5)
ax.set_zlim(0, 5.5)
ax.set_title('Cube with Side Length 5.5 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Excellent job! You've correctly calculated the volume of the cube. Let's walk through the solution step-by-step. We're dealing with a cube that has a side length of 5.5 centimeters. Here's a visual representation of our cube.")
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
  #only("1-")[- Side length, $s = 5.5"cm"$]
  #v(20pt)
  #only("2-")[- $V = (5.5"cm")^3$]
  #only("1")[
    #voiceover("Now, let's plug in our known value. We're given that the side length is 5.5 centimeters.")
  ]
  #only("2")[
    #voiceover("So we substitute 5.5 centimeters for s in our formula. This gives us: Volume equals 5.5 centimeters cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $V = (5.5"cm")^3$]
  #v(20pt)
  #only("2-")[- $V = 5.5 × 5.5 × 5.5"cm"^3$]
  #v(20pt)
  #only("3-")[- $V = 166.375"cm"^3$]
  #only("1")[
    #voiceover("Now let's calculate. We need to multiply 5.5 by itself three times.")
  ]
  #only("2")[
    #voiceover("This is the same as 5.5 times 5.5 times 5.5 cubic centimeters.")
  ]
  #only("3")[
    #voiceover("When we multiply these numbers, we get 166.375 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The volume of the cube is $166.375"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are crucial!]
  #only("1")[
    #voiceover("So our final answer is that the volume of the cube is 166.375 cubic centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's important to include the correct units in your answer. Here, we're dealing with volume, so our units are cubic centimeters.")
  ]
]