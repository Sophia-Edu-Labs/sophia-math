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
    Consider a cube with a surface area of 216 cm².
  ]

  #v(20pt)

  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [-1, 1]
x, y = np.meshgrid(r, r)
one = np.ones(4).reshape(2, 2)
ax.plot_surface(x, y, one, alpha=0.5)
ax.plot_surface(x, y, -one, alpha=0.5)
ax.plot_surface(x, one, y, alpha=0.5)
ax.plot_surface(x, -one, y, alpha=0.5)
ax.plot_surface(one, x, y, alpha=0.5)
ax.plot_surface(-one, x, y, alpha=0.5)

# Remove axis ticks
ax.set_xticks([])
ax.set_yticks([])
ax.set_zticks([])

# Add text
ax.text(0, 0, 1.5, "Surface Area = 216 cm²", ha='center', va='center')
ax.text(1.5, 0, 0, "?", ha='center', va='center', fontsize=20)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Cube with unknown edge length],
      )
    ]
  ]]

  #v(20pt)

  #only("3-")[
    What is the length of one edge?
  ]

  #only("1")[
    #voiceover("Let's consider an interesting problem about the surface area of a cube.")
  ]

  #only("2")[
    #voiceover("We have a cube with a total surface area of 216 square centimeters.")
  ]

  #only("3")[
    #voiceover("The question is: what is the length of one edge of this cube?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "If a cube has a surface area of $216 \\text{ cm}^2$, what is the length of one edge?", 
answerOptions: ("$6 \\text{ cm}$", "$-8 \\text{ cm}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a} \\text{ cm}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)