#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Würfels]
  #v(40pt)

  #only("1-")[
    Berechne das Volumen eines Würfels mit einer Seitenlänge von 5,5 cm.
  ]

  #only("1")[
    #voiceover("Lass uns ein Würfelproblem betrachten. Berechne das Volumen eines Würfels mit einer Seitenlänge von 5,5 Zentimetern.")
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

# Plot faces
for face in faces:
    ax.add_collection3d(Poly3DCollection([face], facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Add edge labels
ax.text(0.5, -0.1, -0.1, "5.5 cm", color='blue')
ax.text(-0.1, 0.5, -0.1, "5.5 cm", color='blue')
ax.text(-0.1, -0.1, 0.5, "5.5 cm", color='blue')

# Set axis limits
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

# Remove axis ticks
ax.set_xticks([])
ax.set_yticks([])
ax.set_zticks([])

# Set labels
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')

plt.title("Würfel mit Seitenlänge 5,5 cm")
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]

  #only("2")[
    #voiceover("Hier ist eine visuelle Darstellung unseres Würfels. Jede Kante dieses Würfels misst 5,5 Zentimeter.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Was ist das Volumen eines Würfels mit einer Seitenlänge von $5.5$ cm?", 
answerOptions: ("$\\text{Volumen} = 166.375$", "$\\text{Volumen} = -328.75$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volumen} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)