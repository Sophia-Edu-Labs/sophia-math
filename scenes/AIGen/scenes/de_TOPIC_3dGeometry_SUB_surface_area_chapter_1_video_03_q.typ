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
    Betrachte einen Würfel mit einer Oberfläche von $216 "cm"^2$.
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
        caption: [Würfel mit unbekannter Kantenlänge],
      )
    ]
  ]]

  #v(20pt)

  #only("3-")[
    Wie lang ist eine Kante?
  ]

  #only("1")[
    #voiceover("Lass uns ein interessantes Problem über die Oberfläche eines Würfels betrachten.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Würfel mit einer gesamten Oberfläche von 216 Quadratzentimetern.")
  ]

  #only("3")[
    #voiceover("Die Frage ist: Wie lang ist eine Kante dieses Würfels?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Wenn ein Würfel eine Oberfläche von $216 \\text{ cm}^2$ hat, wie lang ist eine Kante?", 
answerOptions: ("$6 \\text{ cm}$", "$-8 \\text{ cm}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a} \\text{ cm}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)