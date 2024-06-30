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
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 15, 8, 5

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
    poly3d = [[side[0], side[1], side[2], side[3]]]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (15 m)')
ax.set_ylabel('Width (8 m)')
ax.set_zlabel('Height (5 m)')
ax.set_title('Cuboid 15m x 8m x 5m')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("That's okay, let's review the correct solution together. We're dealing with a cuboid that has dimensions of 15 meters in length, 8 meters in width, and 5 meters in height. Here's a visual representation of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Formula]
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
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Values]
  #v(40pt)
  #only("1-")[- l = 15 m, w = 8 m, h = 5 m]
  #v(20pt)
  #only("2-")[- Surface Area = 2(15 × 8 + 15 × 5 + 8 × 5)]
  #only("1")[
    #voiceover("Now, let's plug in our known values. We have a length of 15 meters, a width of 8 meters, and a height of 5 meters.")
  ]
  #only("2")[
    #voiceover("Substituting these into our formula, we get: Surface Area equals 2 times the sum of 15 times 8, plus 15 times 5, plus 8 times 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- 2(15 × 8 + 15 × 5 + 8 × 5)]
  #v(20pt)
  #only("2-")[- = 2(120 + 75 + 40)]
  #v(20pt)
  #only("3-")[- = 2(235)]
  #v(20pt)
  #only("4-")[- = 470 m²]
  #only("1")[
    #voiceover("Let's calculate step by step. First, we multiply within each parenthesis.")
  ]
  #only("2")[
    #voiceover("15 times 8 is 120, 15 times 5 is 75, and 8 times 5 is 40.")
  ]
  #only("3")[
    #voiceover("Adding these up, we get 235 inside the parentheses.")
  ]
  #only("4")[
    #voiceover("Finally, we multiply by 2, which gives us 470 square meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 470 m²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your answer!]
  #only("1")[
    #voiceover("Therefore, our final answer is that the surface area of the cuboid is 470 square meters.")
  ]
  #only("2")[
    #voiceover("Remember, it's crucial to include the correct units in your answer. Here, we're dealing with area, so our units are square meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]
  #v(40pt)
  #only("1-")[- Given answer: 550 m²]
  #v(20pt)
  #only("2-")[- Our calculated answer: 470 m²]
  #v(20pt)
  #only("3-")[- The given answer was incorrect]
  #only("1")[
    #voiceover("Now, let's verify our answer against the given answer in the exercise.")
  ]
  #only("2")[
    #voiceover("The exercise stated that the answer was 550 square meters, but our calculated answer is 470 square meters.")
  ]
  #only("3")[
    #voiceover("This means the given answer in the exercise was incorrect. Always remember to double-check your calculations and trust your work!")
  ]
]