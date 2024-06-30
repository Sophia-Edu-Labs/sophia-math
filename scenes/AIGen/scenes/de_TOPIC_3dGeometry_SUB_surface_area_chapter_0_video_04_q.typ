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
    Betrachte einen Würfel mit einer Kantenlänge von 7 m:
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
        caption: [Würfel mit einer Kantenlänge von 7 m],
      )
    ]
  ]]

  #only("3-")[
    Was ist die Oberfläche dieses Würfels?
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem über die Oberfläche eines Würfels betrachten.")
  ]

  #only("2")[
    #voiceover("Hier haben wir einen Würfel mit einer Kantenlänge von 7 Metern.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Oberfläche dieses Würfels zu berechnen. Denke daran, dass die Oberfläche eines Würfels die Gesamtfläche aller sechs Flächen ist.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist die Oberfläche eines Würfels mit einer Kantenlänge von $7$ m?", 
answerOptions: ("$\text{Oberfläche} = 294$", "$\text{Oberfläche} = -584$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)