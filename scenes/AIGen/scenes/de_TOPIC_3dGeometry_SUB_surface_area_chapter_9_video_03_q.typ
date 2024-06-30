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
    Berechne die Oberfläche eines Würfels mit einer Seitenlänge von 9 cm.
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Oberfläche zu berechnen. Hier ist unsere Frage: Berechne die Oberfläche eines Würfels mit einer Seitenlänge von 9 Zentimetern.")
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
poly3d = [face for face in faces]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='black', alpha=0.8))

# Set labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Side Length 1 unit')

# Add text for side length
ax.text(0.5, -0.1, 0, '1 unit', fontsize=12)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Ein Würfel mit einer Seitenlänge von 9 cm],
      )
    ]
  ]]

  #only("2")[
    #voiceover("Hier ist eine visuelle Darstellung unseres Würfels. Jede Seite hat eine Länge von 9 Zentimetern.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Berechne die Oberfläche eines Würfels mit einer Seitenlänge von $9$ cm.", 
answerOptions: ("$\text{Oberfläche} = 486$", "$\text{Oberfläche} = -968$"), 
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