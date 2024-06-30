#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche zusammengesetzter Figuren]
  #v(40pt)

  #only("1-")[
    Betrachte eine zusammengesetzte Figur:
    - Quader: 15 cm × 10 cm × 8 cm
    - Würfel: 6 cm Kantenlänge, auf dem Quader
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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid
x = [0, 15, 15, 0, 0, 15, 15, 0]
y = [0, 0, 10, 10, 0, 0, 10, 10]
z = [0, 0, 0, 0, 8, 8, 8, 8]
ax.scatter(x, y, z, c='r', s=50)

# Cube on top
cube_x = [4.5, 10.5, 10.5, 4.5, 4.5, 10.5, 10.5, 4.5]
cube_y = [2, 2, 8, 8, 2, 2, 8, 8]
cube_z = [8, 8, 8, 8, 14, 14, 14, 14]
ax.scatter(cube_x, cube_y, cube_z, c='b', s=50)

# Draw lines for cuboid
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r-')
ax.plot([x[0], x[1], x[2], x[3], x[0]], [y[0], y[1], y[2], y[3], y[0]], [z[0]]*5, 'r-')
ax.plot([x[4], x[5], x[6], x[7], x[4]], [y[4], y[5], y[6], y[7], y[4]], [z[4]]*5, 'r-')

# Draw lines for cube
for i in range(4):
    ax.plot([cube_x[i], cube_x[i+4]], [cube_y[i], cube_y[i+4]], [cube_z[i], cube_z[i+4]], 'b-')
ax.plot([cube_x[0], cube_x[1], cube_x[2], cube_x[3], cube_x[0]], [cube_y[0], cube_y[1], cube_y[2], cube_y[3], cube_y[0]], [cube_z[0]]*5, 'b-')
ax.plot([cube_x[4], cube_x[5], cube_x[6], cube_x[7], cube_x[4]], [cube_y[4], cube_y[5], cube_y[6], cube_y[7], cube_y[4]], [cube_z[4]]*5, 'b-')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Composite Figure: Cuboid with Cube on Top')

plt.show()
            ```,
            width: 360pt
          ),
          caption: [Zusammengesetzte Figur: Quader mit Würfel obendrauf],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Frage: Was ist die gesamte Oberfläche? 🤔
  ]

  #only("1")[
    #voiceover("Betrachte eine zusammengesetzte Figur, die aus zwei Teilen besteht.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit den Maßen 15 Zentimeter mal 10 Zentimeter mal 8 Zentimeter. Auf diesem Quader befindet sich ein Würfel mit einer Kantenlänge von 6 Zentimetern.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Überlege, welche Flächen sichtbar sind und welche dort verborgen sind, wo der Würfel auf den Quader trifft.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Eine zusammengesetzte Figur besteht aus einem Quader ($15 \\text{ cm} \\times 10 \\text{ cm} \\times 8 \\text{ cm}$) mit einem Würfel (Kantenlänge $6 \\text{ cm}$) obendrauf. Was ist die gesamte Oberfläche?", 
answerOptions: ("$\text{Gesamtoberfläche} = 676 \\text{ cm}^2$", "$\text{Gesamtoberfläche} = -1348 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Gesamtoberfläche} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)