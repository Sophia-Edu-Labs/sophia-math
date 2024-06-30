#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cuboid]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(10, 7))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 8, 2, 3

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides 
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]], 
    [vertices[0], vertices[3], vertices[7], vertices[4]], 
    [vertices[1], vertices[2], vertices[6], vertices[5]], 
    [vertices[0], vertices[1], vertices[5], vertices[4]], 
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot sides
for side in sides:
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    verts = [list(zip(x, y, z))]
    ax.add_collection3d(Poly3DCollection(verts, facecolors='cyan', linewidths=1, edgecolors='blue', alpha=0.1))

# Set labels and title
ax.set_xlabel('Length (8 m)')
ax.set_ylabel('Width (2 m)')
ax.set_zlabel('Height (3 m)')
ax.set_title('Cuboid 8m x 2m x 3m')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step by step. We're dealing with a cuboid that has dimensions of 8 meters in length, 2 meters in width, and 3 meters in height. Here's a visual representation of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Where l = length, w = width, h = height]
  #only("1")[
    #voiceover("The first step is to recall the formula for the surface area of a cuboid. It's given by 2 times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Here, l represents length, w represents width, and h represents height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Values]
  #v(40pt)
  #only("1-")[- l = 8 m, w = 2 m, h = 3 m]
  #v(20pt)
  #only("2-")[- Surface Area = 2(8 × 2 + 8 × 3 + 2 × 3)]
  #only("1")[
    #voiceover("Now, let's substitute our known values into the formula. We have a length of 8 meters, a width of 2 meters, and a height of 3 meters.")
  ]
  #only("2")[
    #voiceover("Plugging these into our formula, we get: Surface Area equals 2 times the sum of 8 times 2, plus 8 times 3, plus 2 times 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- Surface Area = 2(16 + 24 + 6)]
  #v(20pt)
  #only("2-")[- Surface Area = 2(46)]
  #v(20pt)
  #only("3-")[- Surface Area = 92 m²]
  #only("1")[
    #voiceover("Let's calculate step by step. First, 8 times 2 is 16, 8 times 3 is 24, and 2 times 3 is 6.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get 46 inside the parentheses.")
  ]
  #only("3")[
    #voiceover("Finally, multiplying by 2, we get 92 square meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 92 m²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is 92 square meters.")
  ]
  #only("2")[
    #voiceover("Remember, it's crucial to include the correct units in your answer. Here, we're dealing with area, so our units are square meters.")
  ]
]