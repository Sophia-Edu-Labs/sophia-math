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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 9, 5, 3

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

# Create a Poly3DCollection object for the sides
poly3d = [side for side in sides]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (9 cm)')
ax.set_ylabel('Width (5 cm)')
ax.set_zlabel('Height (3 cm)')
ax.set_title('Cuboid')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step by step. We have a cuboid with a length of 9 centimeters, a width of 5 centimeters, and a height of 3 centimeters. Here's a visualization of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Where l = length, w = width, h = height]
  #only("1")[
    #voiceover("The first step is to recall the formula for the surface area of a cuboid. It's two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l stands for length, w for width, and h for height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Values]
  #v(40pt)
  #only("1-")[- l = 9 cm, w = 5 cm, h = 3 cm]
  #v(20pt)
  #only("2-")[- SA = 2(9 × 5 + 9 × 3 + 5 × 3) cm²]
  #only("1")[
    #voiceover("Now, let's substitute our known values into the formula. We have a length of 9 centimeters, a width of 5 centimeters, and a height of 3 centimeters.")
  ]
  #only("2")[
    #voiceover("Plugging these into our formula, we get: Surface Area equals 2 times the sum of 9 times 5, plus 9 times 3, plus 5 times 3, all in square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- SA = 2(45 + 27 + 15) cm²]
  #v(20pt)
  #only("2-")[- SA = 2(87) cm²]
  #v(20pt)
  #only("3-")[- SA = 174 cm²]
  #only("1")[
    #voiceover("Let's calculate step by step. First, we compute what's inside the parentheses. 9 times 5 is 45, 9 times 3 is 27, and 5 times 3 is 15.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get 87 inside the parentheses.")
  ]
  #only("3")[
    #voiceover("Finally, we multiply this by 2, giving us a surface area of 174 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 174 cm²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is 174 square centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's always important to include the correct units in your answer. Here, we're dealing with area, so our units are square centimeters.")
  ]
]