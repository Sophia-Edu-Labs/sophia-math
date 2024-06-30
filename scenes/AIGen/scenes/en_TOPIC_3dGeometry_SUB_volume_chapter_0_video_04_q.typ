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
    Calculate the volume of a cube with side length 7 m.
  ]

  #only("1")[
    #voiceover("Let's consider a cube with a side length of 7 meters. Your task is to calculate its volume.")
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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = np.array([[0, 0, 0],
                     [1, 0, 0],
                     [1, 1, 0],
                     [0, 1, 0],
                     [0, 0, 1],
                     [1, 0, 1],
                     [1, 1, 1],
                     [0, 1, 1]])

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

# Add label
ax.text(0.5, 0.5, -0.1, "7 m", ha='center', va='center')

# Set axis labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Set axis limits
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

# Remove tick labels
ax.set_xticklabels([])
ax.set_yticklabels([])
ax.set_zticklabels([])

plt.title("Cube with Side Length 7 m")
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]

  #only("2")[
    #voiceover("Here's a visual representation of our cube. Each side of this cube measures 7 meters in length.")
  ]

  #only("3")[
    #voiceover("Remember, the volume of a cube is calculated by cubing its side length. Good luck with your calculation!")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the volume of a cube with side length $7 	ext{ m}$?", 
answerOptions: ("The volume of the cube is $343 	ext{ m}^3$", "The volume of the cube is $-682 	ext{ m}^3$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("The volume of the cube is $\key{a} 	ext{ m}^3$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)