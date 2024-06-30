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
l, w, h = 14, 9, 6

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
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels and title
ax.set_xlabel('Length (14 m)')
ax.set_ylabel('Width (9 m)')
ax.set_zlabel('Height (6 m)')
ax.set_title('Cuboid Dimensions')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job on solving this problem! Let's walk through the solution step-by-step. We're dealing with a cuboid, which is a three-dimensional rectangular shape. As we can see in this diagram, our cuboid has a length of 14 meters, a width of 9 meters, and a height of 6 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formula for Surface Area]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Where l = length, w = width, h = height]
  #only("1")[
    #voiceover("To find the surface area of a cuboid, we use the formula: Surface Area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l stands for length, w for width, and h for height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Plugging in Values]
  #v(40pt)
  #only("1-")[- l = 14 m]
  #only("2-")[- w = 9 m]
  #only("3-")[- h = 6 m]
  #v(20pt)
  #only("4-")[- SA = 2(14 × 9 + 14 × 6 + 9 × 6)]
  #only("1")[
    #voiceover("Now, let's plug in our values. We have a length of 14 meters,")
  ]
  #only("2")[
    #voiceover("a width of 9 meters,")
  ]
  #only("3")[
    #voiceover("and a height of 6 meters.")
  ]
  #only("4")[
    #voiceover("Substituting these into our formula, we get: Surface Area equals 2 times the sum of 14 times 9, plus 14 times 6, plus 9 times 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculation]
  #v(40pt)
  #only("1-")[- SA = 2(126 + 84 + 54)]
  #v(20pt)
  #only("2-")[- SA = 2(264)]
  #v(20pt)
  #only("3-")[- SA = 528 m²]
  #only("1")[
    #voiceover("Let's calculate step by step. First, 14 times 9 is 126, 14 times 6 is 84, and 9 times 6 is 54.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get 264 inside the parentheses.")
  ]
  #only("3")[
    #voiceover("Finally, we multiply by 2, giving us a total surface area of 528 square meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 528 m²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is 528 square meters.")
  ]
  #only("2")[
    #voiceover("Great job on solving this problem! Remember, it's always important to include the correct units in your answer. Here, we're dealing with area, so our units are square meters.")
  ]
]