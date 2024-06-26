#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cube Surface Area]
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

# Cube
r = [0, 1]
X, Y = np.meshgrid(r, r)
Z = np.zeros_like(X)

ax.plot_surface(X, Y, Z, alpha=0.5)
ax.plot_surface(X, Y, Z+1, alpha=0.5)
ax.plot_surface(X, Z, Y, alpha=0.5)
ax.plot_surface(Z, X, Y, alpha=0.5)
ax.plot_surface(Z+1, X, Y, alpha=0.5)

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)
ax.set_box_aspect((1, 1, 1))

ax.set_xticks([])
ax.set_yticks([])
ax.set_zticks([])

ax.set_xlabel('4 cm')
ax.set_ylabel('4 cm')
ax.set_zlabel('4 cm')

plt.title('Cube with Side Length 4 cm')
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
#text(size: 24pt, weight: "bold")[Question: What is the surface area? 🤔]
]

  #only("1")[
    #voiceover("Consider a cube with a side length of 4 centimeters.")
  ]

  #only("2")[
    #voiceover("Your task is to calculate the total surface area of this cube. Remember to consider all six faces of the cube in your calculation.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the surface area of a cube with side length $4$ cm?", 
answerOptions: ("$\text{Surface Area} = 96$", "$\text{Surface Area} = -188$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)