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
l, w, h = 5, 3, 4

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
    poly3d = [[vertices[0], vertices[1], vertices[2], vertices[3]] for vertices in sides]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (5 cm)')
ax.set_ylabel('Width (3 cm)')
ax.set_zlabel('Height (4 cm)')
ax.set_title('Cuboid')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("That's okay, mistakes happen! Let's go through the correct solution step-by-step. We're dealing with a cuboid that has a length of 5 centimeters, a width of 3 centimeters, and a height of 4 centimeters. Here's a visual representation of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formula for Surface Area]
  #v(40pt)
  #only("1-")[- Surface Area = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Where l = length, w = width, h = height]
  #only("1")[
    #voiceover("To find the surface area of a cuboid, we use the formula: Surface Area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l represents length, w represents width, and h represents height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Plugging in Values]
  #v(40pt)
  #only("1-")[- l = 5 cm, w = 3 cm, h = 4 cm]
  #v(20pt)
  #only("2-")[- SA = 2(5 × 3 + 5 × 4 + 3 × 4)]
  #only("1")[
    #voiceover("Now, let's plug in our values. We have a length of 5 centimeters, a width of 3 centimeters, and a height of 4 centimeters.")
  ]
  #only("2")[
    #voiceover("Substituting these into our formula, we get: Surface Area equals two times the sum of five times three, plus five times four, plus three times four.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculation]
  #v(40pt)
  #only("1-")[- SA = 2(15 + 20 + 12)]
  #v(20pt)
  #only("2-")[- SA = 2(47)]
  #v(20pt)
  #only("3-")[- SA = 94 cm²]
  #only("1")[
    #voiceover("Let's calculate step by step. First, we multiply the numbers inside each parenthesis.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get 47 inside the parentheses.")
  ]
  #only("3")[
    #voiceover("Finally, we multiply by 2, which gives us 94 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 94 cm²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is 94 square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job! Remember, it's always important to include the correct units in your answer. In this case, since we're dealing with area, our units are square centimeters.")
  ]
]