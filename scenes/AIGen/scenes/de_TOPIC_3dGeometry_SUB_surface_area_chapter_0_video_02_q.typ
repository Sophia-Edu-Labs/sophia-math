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
    #text(size: 24pt, weight: "bold")[Frage: Wie berechnet man die Oberfläche eines Würfels? 🤔]
  ]

  #only("3-")[
    a) 6 × Seitenlänge
  ]

  #only("4-")[
    b) Seitenlänge × Seitenlänge
  ]

  #only("5-")[
    c) 6 × (Seitenlänge × Seitenlänge)
  ]

  #only("6-")[
    d) Seitenlänge × Seitenlänge × Seitenlänge
  ]

  #only("1")[
    #voiceover("Betrachten wir einen Würfel. Wie du sehen kannst, ist ein Würfel eine dreidimensionale Form mit sechs identischen quadratischen Flächen.")
  ]

  #only("2")[
    #voiceover("Unsere heutige Frage lautet: Wie berechnet man die Oberfläche eines Würfels?")
  ]

  #only("3")[
    #voiceover("Ist es a) 6 mal die Seitenlänge,")
  ]

  #only("4")[
    #voiceover("oder b) Seitenlänge mal Seitenlänge,")
  ]

  #only("5")[
    #voiceover("oder c) 6 mal die Größe Seitenlänge mal Seitenlänge,")
  ]

  #only("6")[
    #voiceover("oder d) Seitenlänge mal Seitenlänge mal Seitenlänge?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "Wie berechnet man die Oberfläche eines Würfels?", 
answerOptions: ("$6 \\times \\text{side length}$", "$\\text{side length} \\times \\text{side length}$", "$6 \\times (\\text{side length} \\times \\text{side length})$", "$\\text{side length} \\times \\text{side length} \\times \\text{side length}$"),
correctAnswerIndex: 2 
)