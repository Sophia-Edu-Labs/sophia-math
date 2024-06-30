#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von zusammengesetzten Würfeln]
  #v(40pt)

  #only("1-")[
    Betrachte eine zusammengesetzte Figur, die aus zwei Würfeln besteht:
    - Ein Würfel mit einer Kantenlänge von 7 cm
    - Ein weiterer Würfel mit einer Kantenlänge von 3 cm
    - An einer Seite verbunden
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

# Larger cube
x = np.array([0, 0, 7, 7, 0, 0, 7, 7])
y = np.array([0, 7, 7, 0, 0, 7, 7, 0])
z = np.array([0, 0, 0, 0, 7, 7, 7, 7])
ax.scatter(x, y, z, c='r', s=100)

# Smaller cube
x2 = np.array([0, 0, 3, 3, 0, 0, 3, 3])
y2 = np.array([7, 10, 10, 7, 7, 10, 10, 7])
z2 = np.array([0, 0, 0, 0, 3, 3, 3, 3])
ax.scatter(x2, y2, z2, c='b', s=100)

# Connecting lines for larger cube
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r-')
ax.plot([x[0], x[1], x[2], x[3], x[0]], [y[0], y[1], y[2], y[3], y[0]], [z[0]]*5, 'r-')
ax.plot([x[4], x[5], x[6], x[7], x[4]], [y[4], y[5], y[6], y[7], y[4]], [z[4]]*5, 'r-')

# Connecting lines for smaller cube
for i in range(4):
    ax.plot([x2[i], x2[i+4]], [y2[i], y2[i+4]], [z2[i], z2[i+4]], 'b-')
ax.plot([x2[0], x2[1], x2[2], x2[3], x2[0]], [y2[0], y2[1], y2[2], y2[3], y2[0]], [z2[0]]*5, 'b-')
ax.plot([x2[4], x2[5], x2[6], x2[7], x2[4]], [y2[4], y2[5], y2[6], y2[7], y2[4]], [z2[4]]*5, 'b-')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure of Two Cubes')

plt.show()
            ```,
            width: 360pt
          ),
          caption: [Zusammengesetzte Figur aus zwei Würfeln],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Finde die gesamte Oberfläche dieser zusammengesetzten Figur.
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem betrachten, das die Oberfläche einer zusammengesetzten Figur betrifft.")
  ]

  #only("2")[
    #voiceover("Wir haben zwei Würfel: einen größeren mit einer Kantenlänge von 7 Zentimetern und einen kleineren mit einer Kantenlänge von 3 Zentimetern. Diese Würfel sind an einer Seite verbunden, wie in der Abbildung gezeigt.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Denke daran, wie die Verbindung der Würfel die gesamte Oberfläche beeinflusst.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Eine zusammengesetzte Figur besteht aus zwei Würfeln: einer mit einer Kantenlänge von $7 	ext{ cm}$ und ein weiterer mit einer Kantenlänge von $3 	ext{ cm}$, die an einer Seite verbunden sind. Finde die gesamte Oberfläche.", 
answerOptions: ("$\text{Gesamte Oberfläche} = 286 \\text{ cm}^2$", "$\text{Gesamte Oberfläche} = -568 \\text{ cm}^2$"), 
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
))