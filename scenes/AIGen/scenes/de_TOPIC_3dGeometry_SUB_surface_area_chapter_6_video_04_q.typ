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
    Betrachte ein rechteckiges Prisma mit den Maßen:
    - Länge: 8 cm
    - Breite: 6 cm
    - Höhe: 4 cm
  ]

  #only("2-")[
    Ein zylindrisches Loch wird durch die Mitte gebohrt:
    - Radius: 1 cm
    - Höhe: 4 cm (gleich wie die Höhe des Prismas)
  ]

  #only("3-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(10, 6))
ax = fig.add_subplot(111, projection='3d')

# Prisma
x = [0, 8, 8, 0, 0, 8, 8, 0]
y = [0, 0, 6, 6, 0, 0, 6, 6]
z = [0, 0, 0, 0, 4, 4, 4, 4]
ax.scatter(x, y, z, c='r', s=50)

# Verbindungslinien
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r')
ax.plot([x[0], x[1], x[2], x[3], x[0]], [y[0], y[1], y[2], y[3], y[0]], [z[0]]*5, 'r')
ax.plot([x[4], x[5], x[6], x[7], x[4]], [y[4], y[5], y[6], y[7], y[4]], [z[4]]*5, 'r')

# Zylinder
theta = np.linspace(0, 2*np.pi, 100)
x_c = 4 + np.cos(theta)
y_c = 3 + np.sin(theta)
z_c = np.linspace(0, 4, 100)
X_c, Z_c = np.meshgrid(x_c, z_c)
Y_c, _ = np.meshgrid(y_c, z_c)
ax.plot_surface(X_c, Y_c, Z_c, alpha=0.5, color='b')

ax.set_xlabel('Länge (cm)')
ax.set_ylabel('Breite (cm)')
ax.set_zlabel('Höhe (cm)')
ax.set_title('Rechteckiges Prisma mit zylindrischem Loch')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [Rechteckiges Prisma mit zylindrischem Loch],
      )
    ]
  ]]

  #only("4-")[
    Finde die gesamte Oberfläche dieser zusammengesetzten Figur.
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem betrachten, das die Oberfläche einer zusammengesetzten Figur betrifft.")
  ]

  #only("2")[
    #voiceover("Wir haben ein rechteckiges Prisma mit einer Länge von 8 Zentimetern, einer Breite von 6 Zentimetern und einer Höhe von 4 Zentimetern.")
  ]

  #only("3")[
    #voiceover("Ein zylindrisches Loch wird durch die Mitte gebohrt. Das Loch hat einen Radius von 1 Zentimeter und geht durch die gesamte Höhe des Prismas, die 4 Zentimeter beträgt.")
  ]

  #only("4")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Denke daran, sowohl die verbleibende Oberfläche des Prismas als auch die neu entstandene Oberfläche des zylindrischen Lochs zu berücksichtigen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Ein rechteckiges Prisma ($8 	ext{ cm} 	imes 6 	ext{ cm} 	imes 4 	ext{ cm}$) hat ein zylindrisches Loch (Radius $1 	ext{ cm}$, Höhe $4 	ext{ cm}$) durch die Mitte gebohrt. Finde die gesamte Oberfläche.", 
answerOptions: ("\begin{matrix} \\text{Gesamtoberfläche:} & 208.57 \\text{ cm}^2 \end{matrix}", "\begin{matrix} \\text{Gesamtoberfläche:} & -413.14 \\text{ cm}^2 \end{matrix}"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("\begin{matrix} \\text{Gesamtoberfläche:} & \key{a} \\text{ cm}^2 \end{matrix}"), 
answerOptionsTypes: ("a": "number",
) 
))