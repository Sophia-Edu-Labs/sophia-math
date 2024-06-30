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
    - Quader: 8 cm × 5 cm × 3 cm
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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Quader
x = [0, 8, 8, 0, 0, 8, 8, 0]
y = [0, 0, 5, 5, 0, 0, 5, 5]
z = [0, 0, 0, 0, 3, 3, 3, 3]
ax.scatter(x, y, z)

# Würfel oben drauf
x_cube = [2.5, 5.5, 5.5, 2.5, 2.5, 5.5, 5.5, 2.5]
y_cube = [1, 1, 4, 4, 1, 1, 4, 4]
z_cube = [3, 3, 3, 3, 6, 6, 6, 6]
ax.scatter(x_cube, y_cube, z_cube, color='red')

# Verbinde die Eckpunkte
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i], z_cube[i+4]], 'r')

for i in [0, 1, 2, 3]:
    ax.plot([x[i], x[(i+1)%4]], [y[i], y[(i+1)%4]], [z[i], z[(i+1)%4]], 'b')
    ax.plot([x[i+4], x[((i+1)%4)+4]], [y[i+4], y[((i+1)%4)+4]], [z[i+4], z[((i+1)%4)+4]], 'b')
    ax.plot([x_cube[i], x_cube[(i+1)%4]], [y_cube[i], y_cube[(i+1)%4]], [z_cube[i], z_cube[(i+1)%4]], 'r')
    ax.plot([x_cube[i+4], x_cube[((i+1)%4)+4]], [y_cube[i+4], y_cube[((i+1)%4)+4]], [z_cube[i+4], z_cube[((i+1)%4)+4]], 'r')

ax.set_xlabel('Länge (cm)')
ax.set_ylabel('Breite (cm)')
ax.set_zlabel('Höhe (cm)')
ax.set_title('Zusammengesetzte Figur: Quader mit Würfel oben drauf')

plt.show()
            ```,
            width: 360pt
          ),
          caption: [Zusammengesetzte Figur: Quader mit Würfel oben drauf]
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Frage: Was ist die gesamte Oberfläche? 🤔
  ]

  #only("1")[
    #voiceover("Betrachten wir eine zusammengesetzte Figur, die aus zwei Teilen besteht.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit den Maßen 8 Zentimeter mal 5 Zentimeter mal 3 Zentimeter. Auf diesem Quader befindet sich ein Würfel mit einer Kantenlänge von 3 Zentimetern.")
  ]

  #only("3")[
    #voiceover("Nun ist es deine Aufgabe, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Überlege, welche Flächen sichtbar sind und welche dort, wo der Würfel auf den Quader trifft, verborgen sind.")
  ]
]]

//Typ: Numerisch
#questionDef(
questionText: "Eine zusammengesetzte Figur besteht aus einem Quader ($8 \\text{ cm} \\times 5 \\text{ cm} \\times 3 \\text{ cm}$) mit einem Würfel (Kantenlänge $3 \\text{ cm}$) oben drauf. Was ist die gesamte Oberfläche?", 
answerOptions: ("$\text{Gesamtoberfläche} = 166 \\text{ cm}^2$", "$\text{Gesamtoberfläche} = -328 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Gesamtoberfläche} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)