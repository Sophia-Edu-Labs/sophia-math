#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche der L-förmigen Figur]
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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# First cuboid
x1 = [0, 7, 7, 0, 0]
y1 = [0, 0, 5, 5, 0]
z1 = [0, 0, 0, 0, 0]
ax.plot(x1, y1, z1, 'b')
ax.plot(x1, y1, [3]*5, 'b')
for i in range(4):
  ax.plot([x1[i], x1[i]], [y1[i], y1[i]], [0, 3], 'b')

# Second cuboid
x2 = [0, 3, 3, 0, 0]
y2 = [0, 0, 5, 5, 0]
z2 = [3, 3, 3, 3, 3]
ax.plot(x2, y2, z2, 'r')
ax.plot(x2, y2, [7]*5, 'r')
for i in range(4):
  ax.plot([x2[i], x2[i]], [y2[i], y2[i]], [3, 7], 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('L-Shaped Figure')

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
    - Quader 1: 7 cm × 5 cm × 3 cm
    - Quader 2: 3 cm × 5 cm × 4 cm
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Frage: Berechne die gesamte Oberfläche 📐]
  ]

  #only("1")[
    #voiceover("Betrachten wir eine L-förmige Figur, die aus zwei Quadern besteht.")
  ]

  #only("2")[
    #voiceover("Der erste Quader misst 7 Zentimeter mal 5 Zentimeter mal 3 Zentimeter. Der zweite Quader, der auf einem Teil des ersten platziert ist, misst 3 Zentimeter mal 5 Zentimeter mal 4 Zentimeter.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser L-förmigen Figur zu berechnen. Denk daran, welche Flächen sichtbar sind und welche an den Verbindungsstellen der Quader verborgen sind.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Berechne die Oberfläche einer L-förmigen Figur, die aus zwei Quadern besteht: einer $7 \\text{ cm} \\times 5 \\text{ cm} \\times 3 \\text{ cm}$ und einem weiteren $3 \\text{ cm} \\times 5 \\text{ cm} \\times 4 \\text{ cm}$.", 
answerOptions: ("$\\text{Oberfläche} = 206 \\text{ cm}^2$", "$\\text{Oberfläche} = -408 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Oberfläche} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)