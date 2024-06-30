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
    A composite figure consists of:
    - Cuboid (10 cm × 6 cm × 4 cm)
    - Cube (side length 3 cm) on top
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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid
x = [0, 10, 10, 0, 0, 10, 10, 0]
y = [0, 0, 6, 6, 0, 0, 6, 6]
z = [0, 0, 0, 0, 4, 4, 4, 4]
ax.scatter(x, y, z, c='r', s=50)

# Cube on top
x_cube = [3.5, 6.5, 6.5, 3.5, 3.5, 6.5, 6.5, 3.5]
y_cube = [1.5, 1.5, 4.5, 4.5, 1.5, 1.5, 4.5, 4.5]
z_cube = [4, 4, 4, 4, 7, 7, 7, 7]
ax.scatter(x_cube, y_cube, z_cube, c='b', s=50)

# Connecting lines for cuboid
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r-')
ax.plot([x[0], x[1], x[2], x[3], x[0]], [y[0], y[1], y[2], y[3], y[0]], [z[0]]*5, 'r-')
ax.plot([x[4], x[5], x[6], x[7], x[4]], [y[4], y[5], y[6], y[7], y[4]], [z[4]]*5, 'r-')

# Connecting lines for cube
for i in range(4):
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i], z_cube[i+4]], 'b-')
ax.plot([x_cube[0], x_cube[1], x_cube[2], x_cube[3], x_cube[0]], [y_cube[0], y_cube[1], y_cube[2], y_cube[3], y_cube[0]], [z_cube[0]]*5, 'b-')
ax.plot([x_cube[4], x_cube[5], x_cube[6], x_cube[7], x_cube[4]], [y_cube[4], y_cube[5], y_cube[6], y_cube[7], y_cube[4]], [z_cube[4]]*5, 'b-')

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
    #voiceover("We have a cuboid with dimensions 10 centimeters by 6 centimeters by 4 centimeters, and on top of it, we have a cube with a side length of 3 centimeters.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this composite figure. Remember to consider all visible surfaces!")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "A composite figure consists of a cuboid ($10 \\text{ cm} \\times 6 \\text{ cm} \\times 4 \\text{ cm}$) with a cube (side length $3 \\text{ cm}$) on top. What is the total surface area?", 
answerOptions: ("$\text{Total Surface Area} = 244 \\text{ cm}^2$", "$\text{Total Surface Area} = -484 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Total Surface Area} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)