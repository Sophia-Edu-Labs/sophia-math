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
    - Cuboid: 7 cm × 6 cm × 5 cm
    - Cube: 4 cm side length, on top of cuboid
  ]

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
x = np.array([0, 7, 7, 0, 0, 7, 7, 0])
y = np.array([0, 0, 6, 6, 0, 0, 6, 6])
z = np.array([0, 0, 0, 0, 5, 5, 5, 5])
ax.scatter(x, y, z, c='r', s=50)

# Cube on top
x_cube = np.array([1.5, 5.5, 5.5, 1.5, 1.5, 5.5, 5.5, 1.5])
y_cube = np.array([1, 1, 5, 5, 1, 1, 5, 5])
z_cube = np.array([5, 5, 5, 5, 9, 9, 9, 9])
ax.scatter(x_cube, y_cube, z_cube, c='b', s=50)

# Connect points
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r')
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i], z_cube[i+4]], 'b')

for i in [0, 1, 2, 3]:
    ax.plot([x[i], x[(i+1)%4]], [y[i], y[(i+1)%4]], [z[i], z[(i+1)%4]], 'r')
    ax.plot([x[i+4], x[((i+1)%4)+4]], [y[i+4], y[((i+1)%4)+4]], [z[i+4], z[((i+1)%4)+4]], 'r')
    ax.plot([x_cube[i], x_cube[(i+1)%4]], [y_cube[i], y_cube[(i+1)%4]], [z_cube[i], z_cube[(i+1)%4]], 'b')
    ax.plot([x_cube[i+4], x_cube[((i+1)%4)+4]], [y_cube[i+4], y_cube[((i+1)%4)+4]], [z_cube[i+4], z_cube[((i+1)%4)+4]], 'b')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure')

plt.show()
            ```,
            width: 360pt
          ),
          caption: [Composite figure: Cuboid with cube on top],
        )
      ]
    ]
  ]

  #only("3-")[
    Question: What is the total surface area?
  ]

  #only("1")[
    #voiceover("Let's consider a problem involving surface area of composite figures.")
  ]

  #only("2")[
    #voiceover("We have a composite figure consisting of a cuboid with dimensions 7 centimeters by 6 centimeters by 5 centimeters, and a cube with side length 4 centimeters placed on top of it.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this composite figure.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "A composite figure consists of a cuboid ($7 \\text{ cm} \\times 6 \\text{ cm} \\times 5 \\text{ cm}$) with a cube (side length $4 \\text{ cm}$) on top. What is the total surface area?", 
answerOptions: ("The total surface area is $214 \\text{ cm}^2$", "The total surface area is $-424 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("The total surface area is $\key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)