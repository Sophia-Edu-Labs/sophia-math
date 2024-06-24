#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Cubes]
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
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s-e)) == r[1]-r[0]:
        ax.plot3D(*zip(s, e), color="b")

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

  #only("2-")[- 📦 Cube: 3D shape with equal sides]
  #v(20pt)
  #only("3-")[- 🧮 Surface Area: Total area of all faces]
  #v(20pt)
  #only("4-")[- 🤔 How do we calculate it?]

  #only("1")[
    #voiceover("Welcome to our lesson on the surface area of cubes! Imagine you have a gift box in the shape of a perfect cube, and you want to wrap it with wrapping paper. How much paper would you need?")
  ]

  #only("2")[
    #voiceover("First, let's recall what a cube is. A cube is a three-dimensional shape where all sides are equal. It's like a box where the length, width, and height are all the same.")
  ]

  #only("3")[
    #voiceover("The surface area of a cube is the total area of all its faces. In other words, it's the amount of paper we'd need to cover every side of our cube-shaped gift box.")
  ]

  #only("4")[
    #voiceover("But how do we calculate this? Let's find out in the next slide!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area]
  #v(40pt)

  #only("1-")[- 🎲 Cube has 6 identical square faces]
  #v(20pt)
  #only("2-")[- 📏 Area of one face = side length squared]
  #v(20pt)
  #only("3-")[- 🧮 Total Surface Area = 6 × (side length)²]
  #v(20pt)
  #only("4-")[- 📐 Formula: $S A = 6s^2$ where $s$ = side length]

  #only("1")[
    #voiceover("Now, let's think about the structure of a cube. A cube has six faces, and all of these faces are identical squares.")
  ]

  #only("2")[
    #voiceover("The area of one square face is calculated by multiplying the side length by itself. For example, if the side length is 3 centimeters, the area of one face would be 3 times 3, which is 9 square centimeters.")
  ]

  #only("3")[
    #voiceover("Since all six faces are identical, we can multiply the area of one face by 6 to get the total surface area.")
  ]

  #only("4")[
    #voiceover("This gives us our formula: The surface area of a cube equals 6 times the side length squared. We write this as S A equals 6 s squared, where s represents the side length.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[- 📦 Cube: 3D shape with 6 equal square faces]
  #v(20pt)
  #only("2-")[- 🧮 Surface Area: Total area of all faces]
  #v(20pt)
  #only("3-")[- 📐 Formula: $S A = 6s^2$]
  #v(20pt)
  #only("4-")[- 💡 Remember: Multiply area of one face by 6]

  #only("1")[
    #voiceover("Let's recap what we've learned. A cube is a three-dimensional shape with six equal square faces.")
  ]

  #only("2")[
    #voiceover("The surface area of a cube is the total area of all these faces.")
  ]

  #only("3")[
    #voiceover("We calculate it using the formula: Surface Area equals 6 times the side length squared.")
  ]

  #only("4")[
    #voiceover("The key to remember is that we're essentially calculating the area of one face and then multiplying it by 6. This method allows us to efficiently determine how much material would be needed to cover the entire surface of a cube.")
  ]
]