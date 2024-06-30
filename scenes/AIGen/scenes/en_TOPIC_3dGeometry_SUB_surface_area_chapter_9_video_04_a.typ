#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Composite Figures]
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

# Cuboid
x = np.array([0, 7, 7, 0, 0, 7, 7, 0])
y = np.array([0, 0, 6, 6, 0, 0, 6, 6])
z = np.array([0, 0, 0, 0, 5, 5, 5, 5])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot(x[i:i+2], y[i:i+2], z[i:i+2], 'b')
    ax.plot(x[i:i+2]+[0,0], y[i:i+2]+[0,0], z[i:i+2]+[5,5], 'b')
    ax.plot([x[i],x[i]], [y[i],y[i]], [0,5], 'b')

# Cube on top
cube_x = np.array([1.5, 5.5, 5.5, 1.5, 1.5, 5.5, 5.5, 1.5])
cube_y = np.array([1, 1, 5, 5, 1, 1, 5, 5])
cube_z = np.array([5, 5, 5, 5, 9, 9, 9, 9])
ax.scatter(cube_x, cube_y, cube_z)

for i in range(4):
    ax.plot(cube_x[i:i+2], cube_y[i:i+2], cube_z[i:i+2], 'r')
    ax.plot(cube_x[i:i+2]+[0,0], cube_y[i:i+2]+[0,0], cube_z[i:i+2]+[4,4], 'r')
    ax.plot([cube_x[i],cube_x[i]], [cube_y[i],cube_y[i]], [5,9], 'r')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Cuboid with Cube on Top')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step-by-step. We have a composite figure consisting of a cuboid with dimensions 7 cm by 6 cm by 5 cm, and a cube with side length 4 cm on top of it. Our task is to find the total surface area.")
  ]]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Calculate Cuboid Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cuboid" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((7×6) + (7×5) + (6×5))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(42 + 35 + 30) = 2(107) = 214"cm"^2$]
  #only("1")[
    #voiceover("Let's start with the cuboid. The surface area of a cuboid is given by the formula: 2 times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get 2 times the sum of 7 times 6, 7 times 5, and 6 times 5.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get 2 times 107, which equals 214 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Cube Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 4^2 = 6 × 16 = 96"cm"^2$]
  #only("1")[
    #voiceover("Now for the cube. The surface area of a cube is given by 6 times the square of its side length.")
  ]
  #only("2")[
    #voiceover("With a side length of 4 cm, we get 6 times 4 squared, which equals 96 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Adjust for Shared Face]
  #v(40pt)
  #only("1-")[- Shared face area: $4 × 4 = 16"cm"^2$]
  #v(20pt)
  #only("2-")[- We need to subtract this area once]
  #only("1")[
    #voiceover("However, we need to be careful here. The cube sits on top of the cuboid, meaning they share a face. This shared face has an area of 4 times 4, which is 16 square centimeters.")
  ]
  #only("2")[
    #voiceover("We've counted this shared face twice in our calculations so far, once for the cuboid and once for the cube. We need to subtract it once to avoid double-counting.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- $"Total SA" = "SA"_"cuboid" + "SA"_"cube" - "Shared Face"$]
  #v(20pt)
  #only("2-")[- $"Total SA" = 214 + 96 - 16 = 294"cm"^2$]
  #only("1")[
    #voiceover("Now we can calculate the total surface area. It's the sum of the surface areas of the cuboid and the cube, minus the area of the shared face.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get 214 plus 96 minus 16, which equals 294 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area is $294"cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Remember: Always check your units!]
  #only("1")[
    #voiceover("Therefore, the total surface area of our composite figure is 294 square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job solving this problem! Remember, when dealing with composite figures, it's crucial to consider shared faces to avoid double-counting. Also, always double-check your units to ensure your final answer makes sense.")
  ]
]