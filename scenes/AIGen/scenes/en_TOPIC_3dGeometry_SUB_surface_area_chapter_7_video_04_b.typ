#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Composite Figure Surface Area]
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
x = np.array([0, 8, 8, 0, 0, 8, 8, 0])
y = np.array([0, 0, 5, 5, 0, 0, 5, 5])
z = np.array([0, 0, 0, 0, 3, 3, 3, 3])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
ax.plot(x[:4], y[:4], z[:4], 'b')
ax.plot(x[4:], y[4:], z[4:], 'b')

# Cube on top
x_cube = np.array([2.5, 5.5, 5.5, 2.5, 2.5, 5.5, 5.5, 2.5])
y_cube = np.array([1, 1, 4, 4, 1, 1, 4, 4])
z_cube = np.array([3, 3, 3, 3, 6, 6, 6, 6])
ax.scatter(x_cube, y_cube, z_cube)

for i in range(4):
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i], z_cube[i+4]], 'r')
ax.plot(x_cube[:4], y_cube[:4], z_cube[:4], 'r')
ax.plot(x_cube[4:], y_cube[4:], z_cube[4:], 'r')

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
  ]]
  #only("1")[
    #voiceover("That's okay, let's review the correct solution step by step. We have a composite figure consisting of a cuboid with dimensions 8 cm by 5 cm by 3 cm, and a cube with a side length of 3 cm on top. Our task is to find the total surface area.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Calculate Cuboid Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cuboid" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((8×5) + (8×3) + (5×3))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(40 + 24 + 15) = 2(79) = 158"cm"^2$]
  #only("1")[
    #voiceover("Let's start with the cuboid. The surface area of a cuboid is given by the formula: S A cuboid equals 2 times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get: S A cuboid equals 2 times the sum of 8 times 5, 8 times 3, and 5 times 3.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get: S A cuboid equals 2 times 79, which is 158 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Cube Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 3^2 = 6 × 9 = 54"cm"^2$]
  #only("1")[
    #voiceover("Now for the cube. The surface area of a cube is given by the formula: S A cube equals 6 times the square of its side length.")
  ]
  #only("2")[
    #voiceover("With a side length of 3 cm, we get: S A cube equals 6 times 3 squared, which is 6 times 9, equal to 54 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Account for Shared Face]
  #v(40pt)
  #only("1-")[- Shared face area: $3"cm" × 3"cm" = 9"cm"^2$]
  #v(20pt)
  #only("2-")[- This area is counted twice, so we subtract it once]
  #only("1")[
    #voiceover("However, we need to be careful here. The cube and cuboid share a face, which we've counted twice in our calculations.")
  ]
  #only("2")[
    #voiceover("This shared face has an area of 3 centimeters times 3 centimeters, which is 9 square centimeters. We need to subtract this once to avoid double-counting.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- $"SA"_"total" = "SA"_"cuboid" + "SA"_"cube" - "SA"_"shared"$]
  #v(20pt)
  #only("2-")[- $"SA"_"total" = 158"cm"^2 + 54"cm"^2 - 9"cm"^2$]
  #v(20pt)
  #only("3-")[- $"SA"_"total" = 203"cm"^2$]
  #only("1")[
    #voiceover("Now we can calculate the total surface area. It's the sum of the cuboid's surface area and the cube's surface area, minus the area of the shared face.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get: 158 square centimeters plus 54 square centimeters minus 9 square centimeters.")
  ]
  #only("3")[
    #voiceover("This gives us a total surface area of 203 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area of the composite figure is $203"cm"^2$. 🎉]]
  #v(40pt)
  #only("2-")[💡 Remember: Always check for shared surfaces in composite figures!]
  #only("1")[
    #voiceover("So, our final answer is that the total surface area of the composite figure is 203 square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job solving this problem! Remember, when dealing with composite figures, always be on the lookout for shared surfaces to avoid double-counting. This attention to detail is crucial in geometry problems.")
  ]
]