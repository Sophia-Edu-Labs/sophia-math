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
    Consider a cube with side length 7 m:
  ]

  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = [
    [0, 0, 0], [0, 7, 0], [7, 7, 0], [7, 0, 0],
    [0, 0, 7], [0, 7, 7], [7, 7, 7], [7, 0, 7]
]

# Cube edges
edges = [
    [0, 1], [1, 2], [2, 3], [3, 0],
    [4, 5], [5, 6], [6, 7], [7, 4],
    [0, 4], [1, 5], [2, 6], [3, 7]
]

# Plot edges
for edge in edges:
    x = [vertices[edge[0]][0], vertices[edge[1]][0]]
    y = [vertices[edge[0]][1], vertices[edge[1]][1]]
    z = [vertices[edge[0]][2], vertices[edge[1]][2]]
    ax.plot(x, y, z, 'b')

# Set labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Set title
plt.title('Cube with Side Length 7 m')

# Show the plot
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Cube with side length 7 m],
      )
    ]
  ]]

  #only("3-")[
    What is the surface area of this cube?
  ]

  #only("1")[
    #voiceover("Let's consider a problem about the surface area of a cube.")
  ]

  #only("2")[
    #voiceover("Here we have a cube with a side length of 7 meters.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the surface area of this cube. Remember, the surface area of a cube is the total area of all six faces.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the surface area of a cube with side length $7$ m?", 
answerOptions: ("$\text{Surface Area} = 294$", "$\text{Surface Area} = -584$"), 
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