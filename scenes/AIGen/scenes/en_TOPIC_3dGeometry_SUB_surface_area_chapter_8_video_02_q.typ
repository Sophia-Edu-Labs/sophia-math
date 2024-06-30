#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Composite Cubes]
  #v(40pt)

  #only("1-")[
    Consider a composite figure consisting of two cubes:
    - One cube with side length 7 cm
    - Another cube with side length 3 cm
    - Attached at one face
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

# Larger cube
x = np.array([0, 0, 7, 7, 0, 0, 7, 7])
y = np.array([0, 7, 7, 0, 0, 7, 7, 0])
z = np.array([0, 0, 0, 0, 7, 7, 7, 7])
ax.scatter(x, y, z, c='r', s=100)

# Smaller cube
x2 = np.array([0, 0, 3, 3, 0, 0, 3, 3])
y2 = np.array([7, 10, 10, 7, 7, 10, 10, 7])
z2 = np.array([0, 0, 0, 0, 3, 3, 3, 3])
ax.scatter(x2, y2, z2, c='b', s=100)

# Connecting lines for larger cube
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r-')
ax.plot([x[0], x[1], x[2], x[3], x[0]], [y[0], y[1], y[2], y[3], y[0]], [z[0]]*5, 'r-')
ax.plot([x[4], x[5], x[6], x[7], x[4]], [y[4], y[5], y[6], y[7], y[4]], [z[4]]*5, 'r-')

# Connecting lines for smaller cube
for i in range(4):
    ax.plot([x2[i], x2[i+4]], [y2[i], y2[i+4]], [z2[i], z2[i+4]], 'b-')
ax.plot([x2[0], x2[1], x2[2], x2[3], x2[0]], [y2[0], y2[1], y2[2], y2[3], y2[0]], [z2[0]]*5, 'b-')
ax.plot([x2[4], x2[5], x2[6], x2[7], x2[4]], [y2[4], y2[5], y2[6], y2[7], y2[4]], [z2[4]]*5, 'b-')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure of Two Cubes')

plt.show()
            ```,
            width: 360pt
          ),
          caption: [Composite figure of two cubes],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Find the total surface area of this composite figure.
  ]

  #only("1")[
    #voiceover("Let's consider a problem involving the surface area of a composite figure.")
  ]

  #only("2")[
    #voiceover("We have two cubes: a larger one with a side length of 7 centimeters, and a smaller one with a side length of 3 centimeters. These cubes are attached at one face, as shown in the figure.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this composite figure. Remember to consider how the attachment of the cubes affects the total surface area.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "A composite figure consists of two cubes: one with side length $7 	ext{ cm}$ and another with side length $3 	ext{ cm}$, attached at one face. Find the total surface area.", 
answerOptions: ("$\text{Total Surface Area} = 286 \\text{ cm}^2$", "$\text{Total Surface Area} = -568 \\text{ cm}^2$"), 
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