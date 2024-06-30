#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
  #v(40pt)

  #only("1-")[
    Betrachte einen Würfel mit einer Seitenlänge von 4 cm:
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
    Was ist die Oberfläche dieses Würfels? 🤔
  ]

  #only("1")[
    #voiceover("Betrachte einen Würfel mit einer bestimmten Seitenlänge.")
  ]

  #only("2")[
    #voiceover("Hier haben wir einen Würfel mit einer Seitenlänge von 4 Zentimetern.")
  ]

  #only("3")[
    #voiceover("Kannst du nun die Oberfläche dieses Würfels berechnen?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Was ist die Oberfläche eines Würfels mit einer Seitenlänge von $4$ cm?", 
answerOptions: ("$\text{Oberfläche} = 96$", "$\text{Oberfläche} = -188$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)