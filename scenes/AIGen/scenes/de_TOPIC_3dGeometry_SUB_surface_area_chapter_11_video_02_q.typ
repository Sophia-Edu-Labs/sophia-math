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
    Betrachte einen Würfel mit einer Seitenlänge von 10 cm:
  ]

  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
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
ax.add_collection3d(Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set axis labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Set axis limits
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

# Add text annotation
ax.text(0.5, 0.5, -0.1, "10 cm", ha='center', va='center')

plt.title("Cube with Side Length 10 cm")
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Ein Würfel mit einer Seitenlänge von 10 cm],
      )
    ]
  ]]

  #only("3-")[
    Was ist die Oberfläche dieses Würfels? 🤔
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem über die Oberfläche eines Würfels betrachten.")
  ]

  #only("2")[
    #voiceover("Hier haben wir einen Würfel mit einer Seitenlänge von 10 Zentimetern.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Oberfläche dieses Würfels zu berechnen. Denke daran, die Oberfläche umfasst alle sechs Flächen des Würfels.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Was ist die Oberfläche eines Würfels mit einer Seitenlänge von $10$ cm?", 
answerOptions: ("$\text{Oberfläche} = 600$", "$\text{Oberfläche} = -1196$"), 
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