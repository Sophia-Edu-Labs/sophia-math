#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cube]
  #v(40pt)

  #only("1-")[
    Calculate the volume of a cube with side length 9 cm.
  ]

  #only("1")[
    #voiceover("In this exercise, we'll calculate the volume of a cube. Given a cube with a side length of 9 centimeters, determine its volume.")
  ]

  #v(20pt)

  #only("2-")[
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

# Cube vertices with side length 9 cm
scale = 9
vertices = np.array([[0, 0, 0], [scale, 0, 0], [scale, scale, 0], [0, scale, 0],
                     [0, 0, scale], [scale, 0, scale], [scale, scale, scale], [0, scale, scale]])

# Cube faces
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

for face in faces:
    x, y, z = zip(*face)
    ax.plot(x + (x[0],), y + (y[0],), z + (z[0],), color='b')

# Add label
ax.text(scale / 2, -scale / 10, -scale / 10, "9 cm", color='red', fontsize=12)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Side Length 9 cm')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]

  #only("2")[
    #voiceover("Here's a visual representation of our cube. Each side of this cube measures 9 centimeters. Remember, the volume of a cube is calculated by cubing its side length.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the volume of a cube with side length $9$ cm?", 
answerOptions: ("$\text{Volume} = 729$", "$\text{Volume} = -1454$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Volume} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)