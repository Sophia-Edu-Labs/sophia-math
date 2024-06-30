#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cube]
  #v(40pt)

  #only("1-")[
    Consider a cube with side length 5.5 cm:
  ]

  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])

# Cube faces
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

# Plot cube
ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set axis labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Set axis limits
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

# Add text for side length
ax.text(0.5, -0.1, 0, "5.5 cm", color='blue', fontsize=12)

plt.title("Cube with Side Length 5.5 cm")
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]

  #only("3-")[
    Calculate the surface area of this cube.
  ]

  #only("1")[
    #voiceover("Let's consider an exercise about the surface area of a cube.")
  ]

  #only("2")[
    #voiceover("Here we have a cube with a side length of five point five centimeters.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the surface area of this cube. Remember the formula for the surface area of a cube and apply it to this specific case.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the surface area of a cube with side length $5.5$ cm?", 
answerOptions: ("$\text{Surface Area} = 181.5$", "$\text{Surface Area} = -359.0$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)