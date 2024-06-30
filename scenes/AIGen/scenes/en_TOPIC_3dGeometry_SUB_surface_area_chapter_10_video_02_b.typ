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
l, w, h = 13, 7, 5

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

ax.set_xlabel('Length (13 cm)')
ax.set_ylabel('Width (7 cm)')
ax.set_zlabel('Height (5 cm)')
ax.set_title('Cuboid 13 cm x 7 cm x 5 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Let's review the correct solution step-by-step. We're dealing with a cuboid that has dimensions of 13 centimeters by 7 centimeters by 5 centimeters. Here's a visual representation of our cuboid.")
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
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Values]
  #v(40pt)
  #only("1-")[- l = 13 cm, w = 7 cm, h = 5 cm]
  #v(20pt)
  #only("2-")[- Surface Area = 2(13 × 7 + 13 × 5 + 7 × 5) cm²]
  #only("1")[
    #voiceover("Now, let's plug in our values. We have a length of 13 centimeters, a width of 7 centimeters, and a height of 5 centimeters.")
  ]
  #only("2")[
    #voiceover("Substituting these into our formula, we get: Surface Area equals two times the sum of thirteen times seven, plus thirteen times five, plus seven times five, all in square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- Surface Area = 2(91 + 65 + 35) cm²]
  #v(20pt)
  #only("2-")[- Surface Area = 2(191) cm²]
  #v(20pt)
  #only("3-")[- Surface Area = 382 cm²]
  #only("1")[
    #voiceover("Let's calculate step by step. First, thirteen times seven is ninety-one, thirteen times five is sixty-five, and seven times five is thirty-five.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get one hundred and ninety-one inside the parentheses.")
  ]
  #only("3")[
    #voiceover("Finally, multiplying by two, we get our answer: three hundred and eighty-two square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 382 cm²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is three hundred and eighty-two square centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's always important to include the correct units in your answer. Here, we're dealing with area, so our units are square centimeters.")
  ]
]