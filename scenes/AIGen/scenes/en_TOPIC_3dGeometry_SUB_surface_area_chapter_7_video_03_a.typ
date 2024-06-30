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
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 12, 7, 5

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides' polygons
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
    poly = Poly3DCollection([side], color='cyan', alpha=0.1)
    ax.add_collection3d(poly)
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot(x + [x[0]], y + [y[0]], z + [z[0]], color='blue')

# Set labels and title
ax.set_xlabel('Length (12 m)')
ax.set_ylabel('Width (7 m)')
ax.set_zlabel('Height (5 m)')
ax.set_title('Cuboid 12m x 7m x 5m')

# Set axis limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step by step. We're dealing with a cuboid that has dimensions of 12 meters by 7 meters by 5 meters. Here's a visual representation of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[- Where l = length, w = width, h = height]
  #only("1")[
    #voiceover("The first step is to recall the formula for the surface area of a cuboid. The surface area is equal to two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l represents the length, w represents the width, and h represents the height of the cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Values]
  #v(40pt)
  #only("1-")[- Length (l) = 12 m]
  #v(20pt)
  #only("2-")[- Width (w) = 7 m]
  #v(20pt)
  #only("3-")[- Height (h) = 5 m]
  #only("1")[
    #voiceover("Now, let's plug in our known values. The length is 12 meters,")
  ]
  #only("2")[
    #voiceover("the width is 7 meters,")
  ]
  #only("3")[
    #voiceover("and the height is 5 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[Surface Area = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[= 2((12 dot 7) + (12 dot 5) + (7 dot 5))]
  #v(20pt)
  #only("3-")[= 2(84 + 60 + 35)]
  #v(20pt)
  #only("4-")[= 2(179)]
  #v(20pt)
  #only("5-")[= 358 m²]
  #only("1")[
    #voiceover("Let's calculate step by step. We start with our formula: Surface Area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get two times the sum of twelve times seven, plus twelve times five, plus seven times five.")
  ]
  #only("3")[
    #voiceover("Let's solve the multiplications inside the parentheses first. We get two times the sum of eighty-four, plus sixty, plus thirty-five.")
  ]
  #only("4")[
    #voiceover("Adding these up, we get two times one hundred and seventy-nine.")
  ]
  #only("5")[
    #voiceover("Finally, multiplying by two, we get three hundred and fifty-eight square meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the cuboid is 358 m²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always include units in your answer!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the cuboid is three hundred and fifty-eight square meters.")
  ]
  #only("2")[
    #voiceover("Remember, it's important to include the correct units in your answer. Here, we're dealing with area, so our units are square meters.")
  ]
]