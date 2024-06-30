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
    - Cuboid: 8 cm × 5 cm × 3 cm
    - Cube: 3 cm side length, on top of cuboid
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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid
x = [0, 8, 8, 0, 0, 8, 8, 0]
y = [0, 0, 5, 5, 0, 0, 5, 5]
z = [0, 0, 0, 0, 3, 3, 3, 3]
ax.scatter(x, y, z)

# Cube on top
x_cube = [2.5, 5.5, 5.5, 2.5, 2.5, 5.5, 5.5, 2.5]
y_cube = [1, 1, 4, 4, 1, 1, 4, 4]
z_cube = [3, 3, 3, 3, 6, 6, 6, 6]
ax.scatter(x_cube, y_cube, z_cube, color='red')

# Connect vertices
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i], z_cube[i+4]], 'r')

for i in [0, 1, 2, 3]:
    ax.plot([x[i], x[(i+1)%4]], [y[i], y[(i+1)%4]], [z[i], z[(i+1)%4]], 'b')
    ax.plot([x[i+4], x[((i+1)%4)+4]], [y[i+4], y[((i+1)%4)+4]], [z[i+4], z[((i+1)%4)+4]], 'b')
    ax.plot([x_cube[i], x_cube[(i+1)%4]], [y_cube[i], y_cube[(i+1)%4]], [z_cube[i], z_cube[(i+1)%4]], 'r')
    ax.plot([x_cube[i+4], x_cube[((i+1)%4)+4]], [y_cube[i+4], y_cube[((i+1)%4)+4]], [z_cube[i+4], z_cube[((i+1)%4)+4]], 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Composite Figure: Cuboid with Cube on Top')

plt.show()
            ```,
            width: 360pt
          ),
          caption: [Composite figure: Cuboid with cube on top]
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
    #voiceover("We have a cuboid with dimensions 8 centimeters by 5 centimeters by 3 centimeters. On top of this cuboid, we have a cube with a side length of 3 centimeters.")
  ]

  #only("3")[
    #voiceover("Now, your task is to calculate the total surface area of this composite figure. Think about which surfaces are visible and which are hidden where the cube meets the cuboid.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "A composite figure consists of a cuboid ($8 \\text{ cm} \\times 5 \\text{ cm} \\times 3 \\text{ cm}$) with a cube (side length $3 \\text{ cm}$) on top. What is the total surface area?", 
answerOptions: ("$\text{Total Surface Area} = 166 \\text{ cm}^2$", "$\text{Total Surface Area} = -328 \\text{ cm}^2$"), 
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