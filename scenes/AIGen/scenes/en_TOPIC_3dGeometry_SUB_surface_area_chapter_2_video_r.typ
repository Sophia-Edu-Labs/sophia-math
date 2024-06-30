#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Surface Area of Cuboids 📦]
  #v(40pt)
  #only("1-")[- Cuboids are 3D shapes with 6 rectangular faces 🧊]
  #only("2-")[- Surface area is the total area of all faces 🔍]
  #only("3-")[- Important in packaging, construction, and more 🏗️]

  #only("1")[
    #voiceover("Let's review the surface area of cuboids. Cuboids, also known as rectangular prisms, are three-dimensional shapes with six rectangular faces.")
  ]
  #only("2")[
    #voiceover("The surface area of a cuboid is the total area of all its faces. This concept is crucial in many real-world applications.")
  ]
  #only("3")[
    #voiceover("Understanding surface area is important in fields like packaging, construction, and material science. Let's dive deeper into how we calculate it.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area 🧮]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Vertices
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Faces
faces = [
    [0, 1, 2, 3], [4, 5, 6, 7], [0, 3, 7, 4],
    [1, 2, 6, 5], [0, 1, 5, 4], [2, 3, 7, 6]
]

# Plot cuboid
ax.add_collection3d(art3d.Poly3DCollection([vertices[f] for f in faces], 
                                           alpha=0.5, facecolor='cyan'))

# Add labels
ax.text(l/2, -0.5, 0, 'l', fontsize=12)
ax.text(l+0.2, w/2, 0, 'w', fontsize=12)
ax.text(l+0.2, w+0.2, h/2, 'h', fontsize=12)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid Dimensions')
plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  
  #only("2-")[- Formula: $"SA" = 2(l w + l h + w h)$]
  #only("3-")[- $l$: length, $w$: width, $h$: height]
  #only("4-")[- Sum of areas of all 6 faces]

  #only("1")[
    #voiceover("Here's a cuboid with length l, width w, and height h. To find its surface area, we need to consider all six faces.")
  ]
  #only("2")[
    #voiceover("The formula for the surface area of a cuboid is SA equals 2 times the sum of length times width, length times height, and width times height.")
  ]
  #only("3")[
    #voiceover("In this formula, l represents the length, w the width, and h the height of the cuboid.")
  ]
  #only("4")[
    #voiceover("This formula essentially sums up the areas of all six rectangular faces of the cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Cuboid: 3D shape with 6 rectangular faces 🧊]
  #only("2-")[- Surface Area: Sum of areas of all faces 🔢]
  #only("3-")[- Formula: $"SA" = 2(l w + l h + w h)$ 📏]
  #only("4-")[- Applies to boxes, rooms, buildings, etc. 🏠]

  #only("1")[
    #voiceover("Let's recap what we've reviewed. A cuboid is a three-dimensional shape with six rectangular faces.")
  ]
  #only("2")[
    #voiceover("The surface area of a cuboid is the sum of the areas of all its faces.")
  ]
  #only("3")[
    #voiceover("We calculate this using the formula: Surface Area equals 2 times the sum of length times width, length times height, and width times height.")
  ]
  #only("4")[
    #voiceover("This concept applies to many real-world objects like boxes, rooms, and buildings. Understanding surface area helps in various practical applications, from packaging design to construction planning.")
  ]
]