#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Composite Figure]
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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
cube_points = np.array([
    [0, 0, 0], [6, 0, 0], [6, 6, 0], [0, 6, 0],
    [0, 0, 6], [6, 0, 6], [6, 6, 6], [0, 6, 6]
])

# Cuboid
cuboid_points = np.array([
    [6, 1, 2], [10, 1, 2], [10, 4, 2], [6, 4, 2],
    [6, 1, 4], [10, 1, 4], [10, 4, 4], [6, 4, 4]
])

# Plot cube
for i, j in [(0,1), (1,2), (2,3), (3,0), (4,5), (5,6), (6,7), (7,4), (0,4), (1,5), (2,6), (3,7)]:
    ax.plot(*zip(cube_points[i], cube_points[j]), color='b')

# Plot cuboid
for i, j in [(0,1), (1,2), (2,3), (3,0), (4,5), (5,6), (6,7), (7,4), (0,4), (1,5), (2,6), (3,7)]:
    ax.plot(*zip(cuboid_points[i], cuboid_points[j]), color='r')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Cube (6cm) + Cuboid (4cm x 3cm x 2cm)')

plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Let's review the correct solution step by step. We have a composite figure made up of a cube with side length 6 cm and a smaller cuboid with dimensions 4 cm x 3 cm x 2 cm, joined at one face. Here's a visualization of our composite figure.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Surfaces]
  #v(40pt)
  #only("1-")[- Cube: 6 faces, but 1 is shared 📦]
  #v(20pt)
  #only("2-")[- Cuboid: 6 faces, but 1 is shared 📦]
  #v(20pt)
  #only("3-")[- Total: 5 cube faces + 5 cuboid faces = 10 faces]
  #only("1")[
    #voiceover("Let's start by identifying the surfaces we need to calculate. The cube normally has 6 faces, but one face is shared with the cuboid.")
  ]
  #only("2")[
    #voiceover("Similarly, the cuboid also has 6 faces, but one is shared with the cube.")
  ]
  #only("3")[
    #voiceover("So in total, we need to calculate the area of 5 cube faces and 5 cuboid faces, which gives us 10 faces in total.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Cube Surface Area]
  #v(40pt)
  #only("1-")[- Cube side length: 6 cm]
  #v(20pt)
  #only("2-")[- Area of one face: $6"cm" × 6"cm" = 36"cm"^2$]
  #v(20pt)
  #only("3-")[- Area of 5 faces: $5 × 36"cm"^2 = 180"cm"^2$]
  #only("1")[
    #voiceover("Now, let's calculate the surface area of the cube. We know the cube's side length is 6 centimeters.")
  ]
  #only("2")[
    #voiceover("The area of one face is 6 centimeters times 6 centimeters, which equals 36 square centimeters.")
  ]
  #only("3")[
    #voiceover("We need to consider 5 faces of the cube, so we multiply 36 square centimeters by 5, giving us 180 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate Cuboid Surface Area]
  #v(40pt)
  #only("1-")[- Cuboid dimensions: 4 cm × 3 cm × 2 cm]
  #v(20pt)
  #only("2-")[- Areas: $4×3=12, 4×2=8, 3×2=6$ (all in $"cm"^2$)]
  #v(20pt)
  #only("3-")[- Sum of 5 faces: $(2×12) + (2×8) + 6 = 46"cm"^2$]
  #only("1")[
    #voiceover("Next, let's calculate the surface area of the cuboid. The cuboid's dimensions are 4 centimeters by 3 centimeters by 2 centimeters.")
  ]
  #only("2")[
    #voiceover("We need to calculate the areas of each type of face: 4 times 3 equals 12, 4 times 2 equals 8, and 3 times 2 equals 6, all in square centimeters.")
  ]
  #only("3")[
    #voiceover("We have two faces each of 12 and 8 square centimeters, and one face of 6 square centimeters. Adding these up gives us 46 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Total Surface Area]
  #v(40pt)
  #only("1-")[- Cube surface area: $180"cm"^2$]
  #v(20pt)
  #only("2-")[- Cuboid surface area: $46"cm"^2$]
  #v(20pt)
  #only("3-")[- Total: $180"cm"^2 + 46"cm"^2 = 226"cm"^2$]
  #only("1")[
    #voiceover("Now, let's add up our results. We calculated that the cube's surface area is 180 square centimeters.")
  ]
  #only("2")[
    #voiceover("And the cuboid's surface area is 46 square centimeters.")
  ]
  #only("3")[
    #voiceover("Adding these together, we get a total surface area of 226 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area is $226"cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Remember: Always check your units!]
  #only("1")[
    #voiceover("So, our final answer is that the total surface area of the composite figure is 226 square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job on solving this problem! Remember, it's always important to check your units when dealing with area problems. In this case, we're working with square centimeters.")
  ]
]