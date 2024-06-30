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
l, w, h = 20, 15, 10

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
    poly3d = [side]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='blue', alpha=0.1))

# Set labels and title
ax.set_xlabel('Length (20 m)')
ax.set_ylabel('Width (15 m)')
ax.set_zlabel('Height (10 m)')
ax.set_title('Cuboid 20m x 15m x 10m')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("That's okay! Let's go through the correct solution step-by-step. We're dealing with a cuboid that has dimensions of 20 meters in length, 15 meters in width, and 10 meters in height. Here's a visual representation of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formula for Surface Area]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Where l = length, w = width, h = height]
  #only("1")[
    #voiceover("To calculate the surface area of a cuboid, we use the formula: Surface Area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l represents length, w represents width, and h represents height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Plugging in Values]
  #v(40pt)
  #only("1-")[- l = 20 m]
  #only("2-")[- w = 15 m]
  #only("3-")[- h = 10 m]
  #v(20pt)
  #only("4-")[- SA = 2((20 × 15) + (20 × 10) + (15 × 10))]
  #only("1")[
    #voiceover("Now, let's plug in our values. We know that the length is 20 meters,")
  ]
  #only("2")[
    #voiceover("the width is 15 meters,")
  ]
  #only("3")[
    #voiceover("and the height is 10 meters.")
  ]
  #only("4")[
    #voiceover("Substituting these into our formula, we get: Surface Area equals 2 times the sum of 20 times 15, plus 20 times 10, plus 15 times 10.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculation]
  #v(40pt)
  #only("1-")[- SA = 2(300 + 200 + 150)]
  #v(20pt)
  #only("2-")[- SA = 2(650)]
  #v(20pt)
  #only("3-")[- SA = 1300 m²]
  #only("1")[
    #voiceover("Let's calculate step by step. First, 20 times 15 is 300, 20 times 10 is 200, and 15 times 10 is 150.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get 650 inside the parentheses.")
  ]
  #only("3")[
    #voiceover("Finally, we multiply by 2, giving us 1300 square meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 1300 m²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is 1300 square meters.")
  ]
  #only("2")[
    #voiceover("Remember, it's crucial to include the correct units in your answer. Here, we're dealing with area, so our units are square meters.")
  ]
]