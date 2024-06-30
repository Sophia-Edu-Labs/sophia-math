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

# Plot edges
for edge in edges:
    ax.plot3D(*zip(vertices[edge[0]], vertices[edge[1]]), color='b')

# Set labels
ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

# Set title
ax.set_title('Cube with side length 7 m')

# Set axis limits
ax.set_xlim(0, 7)
ax.set_ylim(0, 7)
ax.set_zlim(0, 7)

# Add text annotation
ax.text(3.5, 3.5, 7.5, '7 m', fontsize=12)

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("It’s okay, mistakes happen! Let's go through the correct solution step by step. We're dealing with a cube that has a side length of 7 meters. Here's a visualization of our cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Formula]
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
  #only("1-")[- Side length, $s = 7"m"$]
  #v(20pt)
  #only("2-")[- $V = (7"m")^3$]
  #only("1")[
    #voiceover("Now, let's plug in our known value. We're given that the side length is 7 meters.")
  ]
  #only("2")[
    #voiceover("So we substitute 7 meters for s in our formula. This gives us: Volume equals 7 meters cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $V = (7"m")^3$]
  #v(20pt)
  #only("2-")[- $V = 7 × 7 × 7"m"^3$]
  #v(20pt)
  #only("3-")[- $V = 343"m"^3$]
  #only("1")[
    #voiceover("Now let's calculate. We need to cube 7 meters.")
  ]
  #only("2")[
    #voiceover("This means we multiply 7 by itself three times: 7 times 7 times 7.")
  ]
  #only("3")[
    #voiceover("7 times 7 is 49, and 49 times 7 is 343. So the volume is 343 cubic meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The volume of the cube is $343"m"^3$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are important!]
  #only("1")[
    #voiceover("So our final answer is that the volume of the cube is 343 cubic meters.")
  ]
  #only("2")[
    #voiceover("Remember, it's crucial to include the correct units in your answer. Here, we're dealing with volume, so our units are cubic meters.")
  ]
]