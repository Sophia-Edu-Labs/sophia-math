#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
#v(40pt)

#only("1-")[
#align(center)[
#box(width: 200pt, height: 200pt)[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = [
    [0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
    [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]
]

# Cube edges
edges = [
    [0, 1], [1, 2], [2, 3], [3, 0],
    [4, 5], [5, 6], [6, 7], [7, 4],
    [0, 4], [1, 5], [2, 6], [3, 7]
]

# Plot edges
for edge in edges:
    x = [vertices[edge[0]][0], vertices[edge[1]][0]]
    y = [vertices[edge[0]][1], vertices[edge[1]][1]]
    z = [vertices[edge[0]][2], vertices[edge[1]][2]]
    ax.plot(x, y, z, 'b')

# Label side length
ax.text(0.5, -0.1, -0.1, '7 m', fontsize=12)

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)
ax.set_axis_off()

plt.tight_layout()
plt.show()

```,
width: 300pt),
caption: [Würfel mit Seitenlänge 7 m],
)
]
]
]
]

#v(20pt)

#only("2-")[
Finde die Oberfläche dieses Würfels.
]

#only("1")[
#voiceover("Betrachten wir einen Würfel.")
]

#only("2")[
#voiceover("Wie groß ist die Oberfläche eines Würfels mit einer Seitenlänge von sieben Metern?")
]
]

//Type: Numeric
#questionDef(
questionText: "Wie groß ist die Oberfläche eines Würfels mit einer Seitenlänge von $7$ m?", 
answerOptions: ("$\\text{Oberfläche} = 294 \\text{ m}^2$", "$\\text{Oberfläche} = -584 \\text{ m}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Oberfläche} = \key{a} \\text{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)