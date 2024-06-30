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
    Calculate the surface area of a cube with side length 10 cm.
  ]

  #only("1")[
    #voiceover("Let's practice calculating surface area. Here's a question for you: Calculate the surface area of a cube with side length 10 centimeters.")
  ]

  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
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
poly3d = Poly3DCollection(faces, alpha=0.8, edgecolors='k')
ax.add_collection3d(poly3d)

# Set labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Side Length 10 cm')

# Add text for side length
ax.text(0.5, -0.1, 0, "10 cm", color='red', fontsize=12)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [A cube with side length 10 cm],
      )
    ]
  ]]

  #only("2")[
    #voiceover("Here's a visual representation of our cube. Each side has a length of 10 centimeters. Remember, to find the surface area, we need to calculate the area of all six faces and add them together.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the surface area of a cube with side length $10$ cm.", 
answerOptions: ("$\text{Surface Area} = 600 \\text{ cm}^2$", "$\text{Surface Area} = -1196 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)