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
x = np.array([0, 6, 6, 0, 0, 6, 6, 0])
y = np.array([0, 0, 4, 4, 0, 0, 4, 4])
z = np.array([0, 0, 0, 0, 3, 3, 3, 3])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
ax.plot(x[:4], y[:4], z[:4], 'b')
ax.plot(x[4:], y[4:], z[4:], 'b')

# Cube on top
x_cube = np.array([1.5, 4.5, 4.5, 1.5, 1.5, 4.5, 4.5, 1.5])
y_cube = np.array([0.5, 0.5, 3.5, 3.5, 0.5, 0.5, 3.5, 3.5])
z_cube = np.array([3, 3, 3, 3, 6, 6, 6, 6])
ax.scatter(x_cube, y_cube, z_cube)

for i in range(4):
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i], z_cube[i+4]], 'r')
ax.plot(x_cube[:4], y_cube[:4], z_cube[:4], 'r')
ax.plot(x_cube[4:], y_cube[4:], z_cube[4:], 'r')

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
  ]
  #only("1")[
    #voiceover("Let's review the correct solution step-by-step. We have a composite figure consisting of a cuboid with dimensions 6 cm by 4 cm by 3 cm, and a cube with a side length of 3 cm on top. Our task is to find the total surface area.")
  ]
]



#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Calculate Cuboid Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cuboid" = 2("lw" + "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((6×4) + (6×3) + (4×3))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(24 + 18 + 12) = 2(54) = 108 "cm"^2$]
  #only("1")[
    #voiceover("Let's start by calculating the surface area of the cuboid. The formula for the surface area of a cuboid is 2 times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get 2 times the sum of 6 times 4, 6 times 3, and 4 times 3.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get 2 times 54, which equals 108 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Cube Surface Area]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 3^2 = 6 × 9 = 54 "cm"^2$]
  #only("1")[
    #voiceover("Now, let's calculate the surface area of the cube. The formula for the surface area of a cube is 6 times the square of its side length.")
  ]
  #only("2")[
    #voiceover("With a side length of 3 cm, we get 6 times 3 squared, which equals 54 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Adjust for Shared Face]
  #v(40pt)
  #only("1-")[- Shared face area: $3 "cm" × 3 "cm" = 9 "cm"^2$]
  #v(20pt)
  #only("2-")[- Subtract from total: $9 "cm"^2$]
  #only("1")[
    #voiceover("However, we need to account for the shared face between the cuboid and the cube. This face has an area of 3 centimeters times 3 centimeters, which is 9 square centimeters.")
  ]
  #only("2")[
    #voiceover("We need to subtract this shared face area once from our total, as it's currently being counted twice.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- Total $"SA" = "SA"_"cuboid" + "SA"_"cube" - "Shared Face"$]
  #v(20pt)
  #only("2-")[- Total $"SA" = 108 "cm"^2 + 54 "cm"^2 - 9 "cm"^2$]
  #v(20pt)
  #only("3-")[- Total $"SA" = 153 "cm"^2$]
  #only("1")[
    #voiceover("Now, let's put it all together. The total surface area is the sum of the cuboid's surface area and the cube's surface area, minus the area of the shared face.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get 108 square centimeters plus 54 square centimeters minus 9 square centimeters.")
  ]
  #only("3")[
    #voiceover("This gives us a total surface area of 153 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area of the composite figure is $153 "cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Remember: Always check your units and consider shared surfaces!]
  #only("1")[
    #voiceover("Therefore, the total surface area of our composite figure is 153 square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job solving this problem! Remember, when dealing with composite figures, it's crucial to consider shared surfaces and ensure you're using the correct units throughout your calculations.")
  ]
]