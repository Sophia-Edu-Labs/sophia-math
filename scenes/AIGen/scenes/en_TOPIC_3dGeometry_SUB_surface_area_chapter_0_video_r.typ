#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Surface Area of Cubes 📦]
  #v(40pt)
  #only("1-")[- Imagine wrapping a gift box 🎁]
  #only("2-")[- How much wrapping paper do we need? 🤔]
  #only("3-")[- Surface area helps us calculate this! 📐]
  
  #only("1")[
    #voiceover("Let's review the concept of surface area for cubes. Imagine you're wrapping a gift box.")
  ]
  #only("2")[
    #voiceover("How much wrapping paper would you need to cover the entire box?")
  ]
  #only("3")[
    #voiceover("This is where the concept of surface area comes in handy. It helps us calculate the total area we need to cover.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area]
  #v(40pt)
  #only("1-")[1. Identify the shape of each face 🔲]
  #only("2-")[2. Calculate area of one face 📏]
  #only("3-")[3. Count total number of faces 🔢]
  #only("4-")[4. Multiply face area by number of faces ✖️]
  
  #only("1")[
    #voiceover("Let's review how we calculate the surface area of a cube step by step. First, we identify the shape of each face.")
  ]
  #only("2")[
    #voiceover("Next, we calculate the area of one face.")
  ]
  #only("3")[
    #voiceover("Then, we count the total number of faces on the cube.")
  ]
  #only("4")[
    #voiceover("Finally, we multiply the area of one face by the total number of faces.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area Formula]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 1]
x, y = np.meshgrid(r, r)
one = np.ones_like(x)
zero = np.zeros_like(x)

# Plot the six faces
ax.plot_surface(x, y, zero, alpha=0.5, color='b')
ax.plot_surface(x, y, one, alpha=0.5, color='b')
ax.plot_surface(x, zero, y, alpha=0.5, color='b')
ax.plot_surface(x, one, y, alpha=0.5, color='b')
ax.plot_surface(zero, x, y, alpha=0.5, color='b')
ax.plot_surface(one, x, y, alpha=0.5, color='b')

# Label
ax.text(0.5, 0.5, -0.1, 's', fontsize=20)
ax.text(0.5, -0.1, 0.5, 's', fontsize=20)
ax.text(-0.1, 0.5, 0.5, 's', fontsize=20)

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

ax.set_axis_off()

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]
  ]
  #only("2-")[Surface Area $ = 6s^2 $]
  #only("3-")[Where $s$ is the side length]
  
  #only("1")[
    #voiceover("Let's review the formula for the surface area of a cube. Here's a visual representation of a cube.")
  ]
  #only("2")[
    #voiceover("The surface area of a cube is equal to six times s squared.")
  ]
  #only("3")[
    #voiceover("Where s represents the side length of the cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Surface area: total area of all faces 📦]
  #only("2-")[- For cubes: all faces are squares ⬜]
  #only("3-")[- Area of one face: $s^2$ 🔢]
  #only("4-")[- Number of faces: 6 🎲]
  #only("5-")[- Formula: $"SA" = 6s^2$ 🧮]
  
  #only("1")[
    #voiceover("Let's recap what we've reviewed. The surface area is the total area of all faces of a three-dimensional object.")
  ]
  #only("2")[
    #voiceover("For cubes, all faces are squares.")
  ]
  #only("3")[
    #voiceover("The area of one face is s squared, where s is the side length.")
  ]
  #only("4")[
    #voiceover("A cube has 6 faces.")
  ]
  #only("5")[
    #voiceover("Therefore, the formula for the surface area of a cube is S A equals 6 times s squared.")
  ]
]