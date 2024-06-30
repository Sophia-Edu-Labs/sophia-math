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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 10, 4, 3

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
    poly3d = [[vertices[0], vertices[1], vertices[2], vertices[3]] for vertices in [side]]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels and title
ax.set_xlabel('Length (10 m)')
ax.set_ylabel('Width (4 m)')
ax.set_zlabel('Height (3 m)')
ax.set_title('Cuboid 10m x 4m x 3m')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Don't worry, let's walk through the correct solution step-by-step. We're dealing with a cuboid that has dimensions of 10 meters in length, 4 meters in width, and 3 meters in height. Here's a visual representation of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Where l = length, w = width, h = height]
  #only("1")[
    #voiceover("The first step is to recall the formula for the surface area of a cuboid. The surface area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l represents length, w represents width, and h represents height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Values]
  #v(40pt)
  #only("1-")[- l = 10 m, w = 4 m, h = 3 m]
  #v(20pt)
  #only("2-")[- Surface Area = 2((10 × 4) + (10 × 3) + (4 × 3))]
  #only("1")[
    #voiceover("Now, let's substitute our known values into the formula. We have a length of 10 meters, a width of 4 meters, and a height of 3 meters.")
  ]
  #only("2")[
    #voiceover("Plugging these values into our formula, we get: Surface Area equals 2 times the sum of 10 times 4, plus 10 times 3, plus 4 times 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- Surface Area = 2(40 + 30 + 12)]
  #v(20pt)
  #only("2-")[- Surface Area = 2(82)]
  #v(20pt)
  #only("3-")[- Surface Area = 164 m²]
  #only("1")[
    #voiceover("Let's calculate each part inside the parentheses. 10 times 4 is 40, 10 times 3 is 30, and 4 times 3 is 12.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get 82 inside the parentheses.")
  ]
  #only("3")[
    #voiceover("Finally, we multiply this by 2, giving us a total surface area of 164 square meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 164 m²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your final answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is 164 square meters.")
  ]
  #only("2")[
    #voiceover("Great job on solving this problem! Remember, it's always important to include the correct units in your final answer. In this case, we're dealing with area, so our units are square meters.")
  ]
]