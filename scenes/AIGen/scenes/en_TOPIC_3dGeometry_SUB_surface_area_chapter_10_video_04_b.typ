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
x = np.array([0, 10, 10, 0, 0, 10, 10, 0])
y = np.array([0, 0, 6, 6, 0, 0, 6, 6])
z = np.array([0, 0, 0, 0, 4, 4, 4, 4])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
ax.plot(x[:4], y[:4], z[:4], 'b')
ax.plot(x[4:], y[4:], z[4:], 'b')

# Cube on top
cube_x = np.array([3.5, 6.5, 6.5, 3.5, 3.5, 6.5, 6.5, 3.5])
cube_y = np.array([1.5, 1.5, 4.5, 4.5, 1.5, 1.5, 4.5, 4.5])
cube_z = np.array([4, 4, 4, 4, 7, 7, 7, 7])
ax.scatter(cube_x, cube_y, cube_z, c='r')

for i in range(4):
    ax.plot([cube_x[i], cube_x[i+4]], [cube_y[i], cube_y[i+4]], [cube_z[i], cube_z[i+4]], 'r')
ax.plot(cube_x[:4], cube_y[:4], cube_z[:4], 'r')
ax.plot(cube_x[4:], cube_y[4:], cube_z[4:], 'r')

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
    ]]
  ]
  #only("1")[
    #voiceover("Let's review the correct solution step-by-step. We have a composite figure consisting of a cuboid with dimensions 10 cm by 6 cm by 4 cm, and a cube with a side length of 3 cm on top. Our task is to find the total surface area.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Calculate Cuboid Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cuboid" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((10×6) + (10×4) + (6×4))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(60 + 40 + 24) = 2(124) = 248 "cm"^2$]
  #only("1")[
    #voiceover("Let's start with the cuboid. The surface area of a cuboid is given by the formula: S A cuboid equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get: S A cuboid equals two times the sum of ten times six, ten times four, and six times four.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get: S A cuboid equals two times the sum of sixty, forty, and twenty-four, which equals two times one hundred and twenty-four, giving us two hundred and forty-eight square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Cube Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 3^2 = 6 × 9 = 54 "cm"^2$]
  #only("1")[
    #voiceover("Now for the cube. The surface area of a cube is given by the formula: S A cube equals six times the square of its side length.")
  ]
  #only("2")[
    #voiceover("With a side length of three centimeters, we get: S A cube equals six times three squared, which is six times nine, giving us fifty-four square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Subtract Shared Face]
  #v(40pt)
  #only("1-")[- Shared face area: $3 × 3 = 9 "cm"^2$]
  #v(20pt)
  #only("2-")[- We count this face twice, so subtract it once]
  #only("1")[
    #voiceover("However, we need to be careful here. The cube and cuboid share a face where they touch. This face has an area of three times three, which is nine square centimeters.")
  ]
  #only("2")[
    #voiceover("We've counted this face twice in our calculations - once for the cuboid and once for the cube. So we need to subtract it once to avoid double-counting.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- Total SA = $"SA"_"cuboid" + "SA"_"cube" - "Shared face"$]
  #v(20pt)
  #only("2-")[- Total SA = $248 + 54 - 9 = 293 "cm"^2$]
  #only("1")[
    #voiceover("Now we can calculate the total surface area. It's the sum of the cuboid's surface area and the cube's surface area, minus the area of the shared face.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get: two hundred and forty-eight plus fifty-four minus nine, which equals two hundred and ninety-three square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area is $293 "cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Remember: Always check your units!]
  #only("1")[
    #voiceover("So our final answer is that the total surface area of the composite figure is two hundred and ninety-three square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job solving this problem! Remember, when dealing with composite figures, it's important to consider shared surfaces to avoid double-counting. Always double-check your calculations and don't forget to include the correct units in your final answer.")
  ]
]