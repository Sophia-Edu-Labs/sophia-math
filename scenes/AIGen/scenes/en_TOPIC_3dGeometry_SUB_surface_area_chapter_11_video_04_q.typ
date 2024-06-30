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
    Consider a composite figure:
    - Cuboid: 15 cm × 10 cm × 8 cm
    - Cube: 6 cm side length, on top of cuboid
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
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
x = [0, 15, 15, 0, 0, 15, 15, 0]
y = [0, 0, 10, 10, 0, 0, 10, 10]
z = [0, 0, 0, 0, 8, 8, 8, 8]
ax.scatter(x, y, z, c='r', s=50)

# Cube on top
cube_x = [4.5, 10.5, 10.5, 4.5, 4.5, 10.5, 10.5, 4.5]
cube_y = [2, 2, 8, 8, 2, 2, 8, 8]
cube_z = [8, 8, 8, 8, 14, 14, 14, 14]
ax.scatter(cube_x, cube_y, cube_z, c='b', s=50)

# Draw lines for cuboid
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r-')
ax.plot([x[0], x[1], x[2], x[3], x[0]], [y[0], y[1], y[2], y[3], y[0]], [z[0]]*5, 'r-')
ax.plot([x[4], x[5], x[6], x[7], x[4]], [y[4], y[5], y[6], y[7], y[4]], [z[4]]*5, 'r-')

# Draw lines for cube
for i in range(4):
    ax.plot([cube_x[i], cube_x[i+4]], [cube_y[i], cube_y[i+4]], [cube_z[i], cube_z[i+4]], 'b-')
ax.plot([cube_x[0], cube_x[1], cube_x[2], cube_x[3], cube_x[0]], [cube_y[0], cube_y[1], cube_y[2], cube_y[3], cube_y[0]], [cube_z[0]]*5, 'b-')
ax.plot([cube_x[4], cube_x[5], cube_x[6], cube_x[7], cube_x[4]], [cube_y[4], cube_y[5], cube_y[6], cube_y[7], cube_y[4]], [cube_z[4]]*5, 'b-')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Composite Figure: Cuboid with Cube on Top')

plt.show()
            ```,
            width: 360pt
          ),
          caption: [Composite figure: Cuboid with cube on top],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Question: What is the total surface area? 🤔
  ]

  #only("1")[
    #voiceover("Let's consider a composite figure consisting of two parts.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with dimensions 15 centimeters by 10 centimeters by 8 centimeters. On top of this cuboid, there's a cube with a side length of 6 centimeters.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this composite figure. Think about which surfaces are visible and which are hidden where the cube meets the cuboid.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "A composite figure consists of a cuboid ($15 \\text{ cm} \\times 10 \\text{ cm} \\times 8 \\text{ cm}$) with a cube (side length $6 \\text{ cm}$) on top. What is the total surface area?", 
answerOptions: ("$\text{Total Surface Area} = 676 \\text{ cm}^2$", "$\text{Total Surface Area} = -1348 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Total Surface Area} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)