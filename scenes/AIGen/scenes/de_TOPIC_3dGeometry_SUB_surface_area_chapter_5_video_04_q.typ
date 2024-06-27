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
ax = fig.add_subplot(111, projection ='3d')

# Rectangular prism
l, w, h = 8, 6, 4
x = [0, l, l, 0, 0]
y = [0, 0, w, w, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [h]*5, 'b')
for i in range(4):
  ax.plot([x[i], x[i]], [y[i], y[i]], [0, h], 'b')

# Cylindrical hole
r = 1
theta = np.linspace(0, 2*np.pi, 100)
x_c = r * np.cos(theta) + l/2
y_c = r * np.sin(theta) + w/2
ax.plot(x_c, y_c, [0]*100, 'r')
ax.plot(x_c, y_c, [h]*100, 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Rectangular Prism with Cylindrical Hole')

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
    - Rechteckiges Prisma: 8 cm × 6 cm × 4 cm
    - Zylindrisches Loch: Radius 1 cm, Höhe 4 cm
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Frage: Was ist die gesamte Oberfläche? 🤔]
  ]

  #only("1")[
    #voiceover("Betrachten wir eine zusammengesetzte Figur.")
  ]

  #only("2")[
    #voiceover("Wir haben ein rechteckiges Prisma mit den Maßen 8 Zentimeter mal 6 Zentimeter mal 4 Zentimeter, und es hat ein zylindrisches Loch in der Mitte mit einem Radius von 1 Zentimeter und einer Höhe von 4 Zentimetern.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Überlege, welche Flächen sichtbar sind und welche neuen Flächen durch das zylindrische Loch entstehen.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Ein rechteckiges Prisma ($8 \\text{ cm} \\times 6 \\text{ cm} \\times 4 \\text{ cm}$) hat ein zylindrisches Loch (Radius $1 \\text{ cm}$, Höhe $4 \\text{ cm}$) in der Mitte. Finde die gesamte Oberfläche.", 
answerOptions: ("Gesamtoberfläche: 208.57 \\text{ cm}^2", "Gesamtoberfläche: -413.14 \\text{ cm}^2"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("Gesamtoberfläche: \key{a} \\text{ cm}^2"), 
answerOptionsTypes: ("a": "number",
) 
), 
)