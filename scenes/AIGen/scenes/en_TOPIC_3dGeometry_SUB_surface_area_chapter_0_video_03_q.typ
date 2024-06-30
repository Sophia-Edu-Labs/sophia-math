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
    Consider a cube with side length 4 cm:
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
    [0, 0, 0], [0, 4, 0], [4, 4, 0], [4, 0, 0],
    [0, 0, 4], [0, 4, 4], [4, 4, 4], [4, 0, 4]
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

# Set limits
ax.set_xlim(0, 4)
ax.set_ylim(0, 4)
ax.set_zlim(0, 4)

# Add text for side length
ax.text(2, -0.5, 0, '4 cm', fontsize=12)

plt.title('Cube with Side Length 4 cm')
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]

  #only("3-")[
    What is the surface area of this cube? 🤔
  ]

  #only("1")[
    #voiceover("Let's consider a cube with a specific side length.")
  ]

  #only("2")[
    #voiceover("Here we have a cube with a side length of 4 centimeters.")
  ]

  #only("3")[
    #voiceover("Now, can you calculate the surface area of this cube?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the surface area of a cube with side length $4$ cm?", 
answerOptions: ("$\text{Surface Area} = 96$", "$\text{Surface Area} = -188$"), 
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