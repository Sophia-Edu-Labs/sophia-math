#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche der zusammengesetzten Figur]
  #v(40pt)

#only("1-")[
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
x = [0, 6, 6, 0, 0]
y = [0, 0, 4, 4, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [3]*5, 'b')
for i in range(4):
  ax.plot([x[i], x[i]], [y[i], y[i]], [0, 3], 'b')

# Cube on top
x = [1.5, 4.5, 4.5, 1.5, 1.5]
y = [0.5, 0.5, 3.5, 3.5, 0.5]
z = [3, 3, 3, 3, 3]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [6]*5, 'b')
for i in range(4):
  ax.plot([x[i], x[i]], [y[i], y[i]], [3, 6], 'b')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Composite Figure: Cuboid with Cube on Top')

plt.show()
```,
width: 360pt
),
caption: []
)
]
]
]
]

  #only("2-")[
    - Quader: 6 cm × 4 cm × 3 cm
    - Würfel: 3 cm Kantenlänge
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Frage: Was ist die gesamte Oberfläche? 🤔]
  ]

  #only("1")[
    #voiceover("Betrachten wir eine zusammengesetzte Figur.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit den Maßen 6 Zentimeter mal 4 Zentimeter mal 3 Zentimeter, und darauf befindet sich ein Würfel mit einer Kantenlänge von 3 Zentimetern.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Eine zusammengesetzte Figur besteht aus einem Quader $(6 \\text{ cm} \\times 4 \\text{ cm} \\times 3 \\text{ cm})$ mit einem Würfel (Kantenlänge $3 \\text{ cm}$) darauf. Was ist die gesamte Oberfläche?", 
answerOptions: ("Die gesamte Oberfläche beträgt $126 \\text{ cm}^2$", "Die gesamte Oberfläche beträgt $-248 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("Die gesamte Oberfläche beträgt $\key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)