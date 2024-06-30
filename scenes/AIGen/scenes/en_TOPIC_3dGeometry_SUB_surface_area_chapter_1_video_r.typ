#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Surface Area of Cubes 📦]
  #v(40pt)
  #only("1-")[- Cubes are 3D shapes with equal sides 🧊]
  #only("2-")[- Surface area is the total area of all faces 🔍]
  #only("3-")[- Let's review the formula and its application 📏]

  #only("1")[
    #voiceover("Let's review the concept of surface area for cubes. Cubes are three-dimensional shapes where all sides have equal length.")
  ]
  #only("2")[
    #voiceover("The surface area of a cube is the total area of all its faces.")
  ]
  #only("3")[
    #voiceover("We'll review the formula for surface area and how to apply it, including how to find the side length when given the surface area.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area Formula]
  #v(40pt)
  #only("1-")[
    #align(center)[
      $"SA" = 6s^2$
    ]
  ]
  #only("2-")[
    #align(center)[
      where $s$ = side length
    ]
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
from itertools import product, combinations

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 1]
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s-e)) == r[1]-r[0]:
        ax.plot3D(*zip(s, e), color="b")

# Label
ax.text(0.5, 0.5, 1.1, "s", fontsize=20)
ax.text(0.5, 1.1, 0.5, "s", fontsize=20)
ax.text(1.1, 0.5, 0.5, "s", fontsize=20)

ax.set_axis_off()
plt.tight_layout()
plt.show()
          ```,
          width: 300pt
        ),
        caption: [],
      )
    ]
  ]
  ]

  #only("1")[
    #voiceover("Let's review the formula for the surface area of a cube. The surface area, which we denote as SA, is equal to six times s squared.")
  ]
  #only("2")[
    #voiceover("Here, s represents the length of one side of the cube.")
  ]
  #only("3")[
    #voiceover("This diagram shows a cube. Each side of the cube has length s. The formula six s squared comes from the fact that a cube has six faces, and each face is a square with area s squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving for Side Length]
  #v(20pt)
  #only("1-")[Given: Surface Area ($"SA"$)]
  #only("2-")[Step 1: Start with $"SA" = 6s^2$]
  #only("3-")[Step 2: Divide both sides by 6]
  #only("4-")[Step 3: Take the square root]
  #v(20pt)
  #only("5-")[
    #align(center)[
      $s = sqrt("SA"/6)$
    ]
  ]

  #only("1")[
    #voiceover("Now, let's review how to find the side length when given the surface area.")
  ]
  #only("2")[
    #voiceover("We start with our formula: Surface Area equals six s squared.")
  ]
  #only("3")[
    #voiceover("To isolate s, we first divide both sides of the equation by six.")
  ]
  #only("4")[
    #voiceover("Then, we take the square root of both sides.")
  ]
  #only("5")[
    #voiceover("This gives us our formula for side length: s equals the square root of Surface Area divided by six.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Surface Area formula: $"SA" = 6s^2$ 📏]
  #only("2-")[- To find side length: $s = sqrt("SA"/6)$ 🧮]
  #only("3-")[- Useful for various calculations 🔢]
  #only("4-")[- Remember to use correct units! 📐]

  #only("1")[
    #voiceover("Let's recap what we've reviewed. The surface area of a cube is given by the formula SA equals six s squared, where s is the side length.")
  ]
  #only("2")[
    #voiceover("If we're given the surface area and need to find the side length, we can use the formula s equals the square root of SA divided by six.")
  ]
  #only("3")[
    #voiceover("These formulas are useful for various calculations involving cubes, such as finding the amount of material needed to cover a cubic object.")
  ]
  #only("4")[
    #voiceover("Remember to always use the correct units in your calculations and final answers!")
  ]
]