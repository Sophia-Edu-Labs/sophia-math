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
l, w, h = 11, 5, 3

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
    poly = Poly3DCollection([side], color='cyan', alpha=0.2)
    ax.add_collection3d(poly)
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot(x + [x[0]], y + [y[0]], z + [z[0]], color='blue')

# Set labels
ax.set_xlabel('Length (11 m)')
ax.set_ylabel('Width (5 m)')
ax.set_zlabel('Height (3 m)')

# Set title
ax.set_title('Cuboid with Surface Area 220 m²')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job! You've correctly solved this problem. Let's go through the solution step-by-step. We're dealing with a cuboid that has a surface area of 220 square meters. We know two of its dimensions: 11 meters and 5 meters. Our task is to find the height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = $2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Where $l$ = length, $w$ = width, $h$ = height]
  #only("1")[
    #voiceover("Let's start by recalling the formula for the surface area of a cuboid. It's given by 2 times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l represents length, w represents width, and h represents height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Known Values]
  #v(40pt)
  #only("1-")[- $220 = 2(11 × 5 + 11h + 5h)$]
  #v(20pt)
  #only("2-")[- $220 = 2(55 + 11h + 5h)$]
  #only("1")[
    #voiceover("Now, let's substitute the known values into our formula. We know the surface area is 220 square meters, the length is 11 meters, and the width is 5 meters. The height, h, is what we're trying to find.")
  ]
  #only("2")[
    #voiceover("Let's simplify the part inside the parentheses. 11 times 5 equals 55.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Solve the Equation]
  #v(40pt)
  #only("1-")[- $220 = 2(55 + 16h)$]
  #v(20pt)
  #only("2-")[- $220 = 110 + 32h$]
  #v(20pt)
  #only("3-")[- $110 = 32h$]
  #v(20pt)
  #only("4-")[- $h = 110/32 = 3.4375$]
  #only("1")[
    #voiceover("Let's continue solving. We can combine 11h and 5h to get 16h.")
  ]
  #only("2")[
    #voiceover("Now, let's distribute the 2. This gives us 110 plus 32h equals 220.")
  ]
  #only("3")[
    #voiceover("Subtract 110 from both sides. We're left with 32h equals 110.")
  ]
  #only("4")[
    #voiceover("Finally, divide both sides by 32. This gives us h equals 3.4375 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[The height of the cuboid is 3 m.]
  #v(40pt)
  #only("2-")[💡 Remember to round to the nearest whole number as specified in the question!]
  #only("1")[
    #voiceover("The question asked for the answer in whole meters, so we round 3.4375 to the nearest whole number.")
  ]
  #only("2")[
    #voiceover("This gives us our final answer: The height of the cuboid is 3 meters. Well done on solving this problem!")
  ]
]