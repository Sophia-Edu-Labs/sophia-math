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
l, w, h = 9, 4, 6

# Vertices of the cuboid
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

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
poly3d = [side for side in sides]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels and title
ax.set_xlabel('Length (9 m)')
ax.set_ylabel('Width (4 m)')
ax.set_zlabel('Height (6 m)')
ax.set_title('Cuboid')

# Set the aspect ratio to be equal
ax.set_box_aspect([l, w, h])  # Aspect ratio is 1:1:1

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Don't worry about the mistake. Let's go through the correct solution step-by-step. We're dealing with a cuboid, which is a three-dimensional rectangular shape. As you can see in this diagram, our cuboid has a length of 9 meters, a width of 4 meters, and a height of 6 meters.")
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
  #text(size: 30pt, weight: "bold")[Plugging in the Values]
  #v(40pt)
  #only("1-")[- l = 9 m]
  #only("2-")[- w = 4 m]
  #only("3-")[- h = 6 m]
  #v(20pt)
  #only("4-")[- SA = 2(9 × 4 + 9 × 6 + 4 × 6)]
  #only("1")[
    #voiceover("Now, let's plug in our values. We know that the length is 9 meters,")
  ]
  #only("2")[
    #voiceover("the width is 4 meters,")
  ]
  #only("3")[
    #voiceover("and the height is 6 meters.")
  ]
  #only("4")[
    #voiceover("Substituting these into our formula, we get: Surface Area equals two times the sum of nine times four, plus nine times six, plus four times six.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating the Surface Area]
  #v(40pt)
  #only("1-")[- SA = 2(36 + 54 + 24)]
  #v(20pt)
  #only("2-")[- SA = 2(114)]
  #v(20pt)
  #only("3-")[- SA = 228 m²]
  #only("1")[
    #voiceover("Let's calculate step by step. First, nine times four is thirty-six, nine times six is fifty-four, and four times six is twenty-four.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get one hundred and fourteen inside the parentheses.")
  ]
  #only("3")[
    #voiceover("Finally, multiplying by two, we get two hundred and twenty-eight square meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 228 m²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your final answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is two hundred and twenty-eight square meters.")
  ]
  #only("2")[
    #voiceover("Great job! Remember, it's always important to include the correct units in your final answer. In this case, we're dealing with area, so our units are square meters.")
  ]
]