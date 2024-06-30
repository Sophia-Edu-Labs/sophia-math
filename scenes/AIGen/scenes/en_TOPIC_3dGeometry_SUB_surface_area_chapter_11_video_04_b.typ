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
x = np.array([0, 15, 15, 0, 0, 15, 15, 0])
y = np.array([0, 0, 10, 10, 0, 0, 10, 10])
z = np.array([0, 0, 0, 0, 8, 8, 8, 8])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot(x[i:i+2], y[i:i+2], z[i:i+2], 'b')
    ax.plot(x[i:i+2], y[i:i+2], z[i+4:i+6], 'b')
    ax.plot([x[i], x[i]], [y[i], y[i]], [z[i], z[i+4]], 'b')

# Cube on top
cube_x = np.array([4.5, 10.5, 10.5, 4.5, 4.5, 10.5, 10.5, 4.5])
cube_y = np.array([2, 2, 8, 8, 2, 2, 8, 8])
cube_z = np.array([8, 8, 8, 8, 14, 14, 14, 14])
ax.scatter(cube_x, cube_y, cube_z)

for i in range(4):
    ax.plot(cube_x[i:i+2], cube_y[i:i+2], cube_z[i:i+2], 'r')
    ax.plot(cube_x[i:i+2], cube_y[i:i+2], cube_z[i+4:i+6], 'r')
    ax.plot([cube_x[i], cube_x[i]], [cube_y[i], cube_y[i]], [cube_z[i], cube_z[i+4]], 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
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
    #voiceover("Not quite. Let's go through the correct solution step by step. We have a composite figure consisting of a cuboid with dimensions 15 cm by 10 cm by 8 cm, and a cube with a side length of 6 cm on top. Here's a visualization of our composite figure.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Calculate Cuboid Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cuboid" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((15 × 10) + (15 × 8) + (10 × 8))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(150 + 120 + 80) = 2(350) = 700 "cm"^2$]
  #only("1")[
    #voiceover("Let's start by calculating the surface area of the cuboid. The formula for the surface area of a cuboid is 2 times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get 2 times the sum of 15 times 10, 15 times 8, and 10 times 8.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get 2 times 350, which equals 700 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Cube Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 6^2 = 6 × 36 = 216 "cm"^2$]
  #only("1")[
    #voiceover("Now, let's calculate the surface area of the cube. The formula for the surface area of a cube is 6 times the square of its side length.")
  ]
  #only("2")[
    #voiceover("With a side length of 6 cm, we get 6 times 6 squared, which equals 216 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Adjust for Shared Face]
  #v(40pt)
  #only("1-")[- Shared face area: $6 "cm" × 6 "cm" = 36 "cm"^2$]
  #v(20pt)
  #only("2-")[- This area is counted twice, so we subtract it once]
  #only("1")[
    #voiceover("However, we need to account for the shared face between the cuboid and the cube. This face has an area of 6 times 6, which is 36 square centimeters.")
  ]
  #only("2")[
    #voiceover("Since this area is included in both the cuboid and cube calculations, we need to subtract it once to avoid counting it twice.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- Total SA = $"SA"_"cuboid" + "SA"_"cube" - "Shared Area"$]
  #v(20pt)
  #only("2-")[- Total SA = $700 "cm"^2 + 216 "cm"^2 - 36 "cm"^2$]
  #v(20pt)
  #only("3-")[- Total SA = $880 "cm"^2$]
  #only("1")[
    #voiceover("Now, let's add up all the parts. The total surface area is the sum of the cuboid surface area and the cube surface area, minus the shared area.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get 700 plus 216 minus 36 square centimeters.")
  ]
  #only("3")[
    #voiceover("This gives us a total surface area of 880 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area of the composite figure is $880 "cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Remember: In composite figures, be careful not to double-count shared surfaces!]
  #only("1")[
    #voiceover("So, our final answer is that the total surface area of the composite figure is 880 square centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, when dealing with composite figures, it's crucial to be careful not to double-count shared surfaces. This is a common mistake that can lead to incorrect answers.")
  ]
]