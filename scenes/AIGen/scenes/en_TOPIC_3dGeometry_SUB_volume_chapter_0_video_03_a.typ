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

# Cube
points = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                   [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])
Z = points
ax.scatter3D(Z[:, 0], Z[:, 1], Z[:, 2])

# List of sides' polygons
verts = [[Z[0], Z[1], Z[2], Z[3]], [Z[4], Z[5], Z[6], Z[7]], 
         [Z[0], Z[1], Z[5], Z[4]], [Z[2], Z[3], Z[7], Z[6]], 
         [Z[1], Z[2], Z[6], Z[5]], [Z[4], Z[7], Z[3], Z[0]]]

# Plot sides
ax.add_collection3d(art3d.Poly3DCollection(verts, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (4 cm)')
ax.set_ylabel('Width (4 cm)')
ax.set_zlabel('Height (4 cm)')
ax.set_title('Cube with Side Length 4 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job! You've correctly calculated the volume of the cube. Let's walk through the solution step-by-step. We're dealing with a cube that has a side length of 4 centimeters. Here's a visualization of our cube.")
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
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Values]
  #v(40pt)
  #only("1-")[- Side length, $s = 4"cm"$]
  #v(20pt)
  #only("2-")[- $V = (4"cm")^3$]
  #only("1")[
    #voiceover("Now, let's plug in our known value. We're given that the side length is 4 centimeters.")
  ]
  #only("2")[
    #voiceover("So we substitute 4 centimeters for s in our formula. This gives us: Volume equals 4 centimeters cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $V = (4"cm")^3$]
  #v(20pt)
  #only("2-")[- $V = 4"cm" × 4"cm" × 4"cm"$]
  #v(20pt)
  #only("3-")[- $V = 64"cm"^3$]
  #only("1")[
    #voiceover("Now let's calculate. We need to cube 4 centimeters.")
  ]
  #only("2")[
    #voiceover("This means we multiply 4 centimeters by itself three times.")
  ]
  #only("3")[
    #voiceover("4 times 4 times 4 equals 64. So our final answer is 64 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The volume of the cube is $64"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are crucial!]
  #only("1")[
    #voiceover("So our final answer is that the volume of the cube is 64 cubic centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's important to include the correct units in your answer. Here, we're dealing with volume, so our units are cubic centimeters.")
  ]
]