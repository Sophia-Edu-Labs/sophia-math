#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cube]
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
Z = np.ones_like(X)

ax.plot_surface(X, Y, Z, alpha=0.5)
ax.plot_surface(X, Y, np.zeros_like(Z), alpha=0.5)
ax.plot_surface(Y, Z, X, alpha=0.5)
ax.plot_surface(Y, Z, np.ones_like(X), alpha=0.5)
ax.plot_surface(Z, X, Y, alpha=0.5)
ax.plot_surface(np.ones_like(Z), X, Y, alpha=0.5)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')
ax.set_title('Cube')

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
    #text(size: 24pt, weight: "bold")[Question: How do you calculate the surface area of a cube? 🤔]
  ]

  #only("3-")[
    a) 6 × side length
  ]

  #only("4-")[
    b) side length × side length
  ]

  #only("5-")[
    c) 6 × (side length × side length)
  ]

  #only("6-")[
    d) side length × side length × side length
  ]

  #only("1")[
    #voiceover("Let's consider a cube. As you can see, a cube is a three-dimensional shape with six identical square faces.")
  ]

  #only("2")[
    #voiceover("Our question today is: How do you calculate the surface area of a cube?")
  ]

  #only("3")[
    #voiceover("Is it a) 6 times the side length,")
  ]

  #only("4")[
    #voiceover("or b) side length times side length,")
  ]

  #only("5")[
    #voiceover("or c) 6 times the quantity side length times side length,")
  ]

  #only("6")[
    #voiceover("or d) side length times side length times side length?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "How do you calculate the surface area of a cube?", 
answerOptions: ("$6 \\times \\text{side length}$", "$\text{side length} \\times \\text{side length}$", "$6 \\times (\text{side length} \\times \\text{side length})$", "$\text{side length} \\times \\text{side length} \\times \\text{side length}$"),
correctAnswerIndex: 2 
)