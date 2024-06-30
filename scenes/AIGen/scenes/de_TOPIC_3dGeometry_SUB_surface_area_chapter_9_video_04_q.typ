#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von zusammengesetzten Figuren]
  #v(40pt)

  #only("1-")[
    Betrachte eine zusammengesetzte Figur:
    - Quader: $7 "cm" dot 6 "cm" dot 5 "cm"$
    - Würfel: $4 "cm"$ Kantenlänge, auf dem Quader
  ]

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
x = np.array([0, 7, 7, 0, 0, 7, 7, 0])
y = np.array([0, 0, 6, 6, 0, 0, 6, 6])
z = np.array([0, 0, 0, 0, 5, 5, 5, 5])
ax.scatter(x, y, z, c='r', s=50)

# Cube on top
x_cube = np.array([1.5, 5.5, 5.5, 1.5, 1.5, 5.5, 5.5, 1.5])
y_cube = np.array([1, 1, 5, 5, 1, 1, 5, 5])
z_cube = np.array([5, 5, 5, 5, 9, 9, 9, 9])
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

plt.show()
            ```,
            width: 360pt
          ),
          caption: [Zusammengesetzte Figur: Quader mit Würfel oben drauf],
        )
      ]
    ]
  ]

  #only("3-")[
    Frage: Was ist die gesamte Oberfläche?
  ]

  #only("1")[
    #voiceover("Betrachten wir ein Problem zur Oberfläche von zusammengesetzten Figuren.")
  ]

  #only("2")[
    #voiceover("Wir haben eine zusammengesetzte Figur, die aus einem Quader mit den Maßen 7 Zentimeter mal 6 Zentimeter mal 5 Zentimeter und einem Würfel mit einer Kantenlänge von 4 Zentimetern besteht, der auf dem Quader platziert ist.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Eine zusammengesetzte Figur besteht aus einem Quader ($7 \\text{ cm} \\times 6 \\text{ cm} \\times 5 \\text{ cm}$) mit einem Würfel (Kantenlänge $4 \\text{ cm}$) oben drauf. Was ist die gesamte Oberfläche?", 
answerOptions: ("Die gesamte Oberfläche beträgt $214 \\text{ cm}^2$", "Die gesamte Oberfläche beträgt $-424 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("Die gesamte Oberfläche beträgt $\key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)