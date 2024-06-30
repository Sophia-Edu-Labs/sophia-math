#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammengesetzte Oberfläche]
  #v(40pt)

  #only("1-")[
    Betrachte eine zusammengesetzte Figur:
    - Quader: 6 cm × 4 cm × 3 cm
    - Würfel: 3 cm Kantenlänge, auf dem Quader
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
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

# Cuboid
x = [0, 6, 6, 0, 0, 6, 6, 0]
y = [0, 0, 4, 4, 0, 0, 4, 4]
z = [0, 0, 0, 0, 3, 3, 3, 3]
ax.scatter(x, y, z, c='r', s=50)

# Cube on top
x_cube = [1.5, 4.5, 4.5, 1.5, 1.5, 4.5, 4.5, 1.5]
y_cube = [0.5, 0.5, 3.5, 3.5, 0.5, 0.5, 3.5, 3.5]
z_cube = [3, 3, 3, 3, 6, 6, 6, 6]
ax.scatter(x_cube, y_cube, z_cube, c='b', s=50)

# Connect points
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r')
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i], z_cube[i+4]], 'b')

for i in [0, 1, 2, 3]:
    ax.plot([x[i], x[(i+1)%4]], [y[i], y[(i+1)%4]], [z[i], z[(i+1)%4]], 'r')
    ax.plot([x[i+4], x[((i+1)%4)+4]], [y[i+4], y[((i+1)%4)+4]], [z[i+4], z[((i+1)%4)+4]], 'r')
    ax.plot([x_cube[i], x_cube[(i+1)%4]], [y_cube[i], y_cube[(i+1)%4]], [z_cube[i], z_cube[(i+1)%4]], 'b')
    ax.plot([x_cube[i+4], x_cube[((i+1)%4)+4]], [y_cube[i+4], y_cube[((i+1)%4)+4]], [z_cube[i+4], z_cube[((i+1)%4)+4]], 'b')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure')

plt.tight_layout()
plt.show()
            ```,
            width: 360pt
          ),
          caption: [Zusammengesetzte Figur: Quader mit Würfel oben drauf],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Frage: Was ist die gesamte Oberfläche?
  ]

  #only("1")[
    #voiceover("Betrachten wir eine zusammengesetzte Figur, die aus zwei Teilen besteht.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit den Maßen 6 Zentimeter mal 4 Zentimeter mal 3 Zentimeter. Auf diesem Quader befindet sich ein Würfel mit einer Kantenlänge von 3 Zentimetern.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Überlege, welche Flächen sichtbar sind und welche dort, wo die beiden Formen aufeinandertreffen, verborgen sind.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Eine zusammengesetzte Figur besteht aus einem Quader ($6 \\text{ cm} \\times 4 \\text{ cm} \\times 3 \\text{ cm}$) mit einem Würfel (Kantenlänge $3 \\text{ cm}$) oben drauf. Was ist die gesamte Oberfläche?", 
answerOptions: ("$\text{Gesamte Oberfläche} = 126 \\text{ cm}^2$", "$\text{Gesamte Oberfläche} = -248 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Gesamte Oberfläche} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)