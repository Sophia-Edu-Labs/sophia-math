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
l, w, h = 10, 8, 5

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

ax.set_xlabel('Length (10 cm)')
ax.set_ylabel('Width (8 cm)')
ax.set_zlabel('Height (5 cm)')
ax.set_title('Cuboid with Surface Area 340 cm²')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  ]
  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step-by-step. We're dealing with a cuboid that has a surface area of 340 square centimeters. Its length is 10 centimeters, its width is 8 centimeters, and we need to find its height. Here's a visualization of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = $2("lw" + "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Where $l$ = length, $w$ = width, $h$ = height]
  #only("1")[
    #voiceover("Let's start by recalling the formula for the surface area of a cuboid. The surface area is equal to two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l stands for length, w for width, and h for height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Known Values]
  #v(40pt)
  #only("1-")[- Surface Area = $340"cm"^2$]
  #v(20pt)
  #only("2-")[- Length ($l$) = $10"cm"$]
  #v(20pt)
  #only("3-")[- Width ($w$) = $8"cm"$]
  #v(20pt)
  #only("4-")[- Height ($h$) = unknown]
  #only("1")[
    #voiceover("Now, let's substitute the values we know into our formula. We know that the surface area is 340 square centimeters.")
  ]
  #only("2")[
    #voiceover("The length is 10 centimeters.")
  ]
  #only("3")[
    #voiceover("The width is 8 centimeters.")
  ]
  #only("4")[
    #voiceover("And the height is what we're trying to find.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Set Up the Equation]
  #v(40pt)
  #only("1-")[- $340 = 2(10 dot 8 + 10h + 8h)$]
  #v(20pt)
  #only("2-")[- $340 = 2(80 + 10h + 8h)$]
  #v(20pt)
  #only("3-")[- $340 = 2(80 + 18h)$]
  #only("1")[
    #voiceover("Let's set up our equation. We have 340 equals 2 times the sum of 10 times 8, plus 10 times h, plus 8 times h.")
  ]
  #only("2")[
    #voiceover("Simplifying the first term inside the parentheses, we get 340 equals 2 times the sum of 80 plus 10h plus 8h.")
  ]
  #only("3")[
    #voiceover("Combining like terms, we have 340 equals 2 times the sum of 80 plus 18h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Solve for h]
  #v(40pt)
  #only("1-")[- $340 = 2(80 + 18h)$]
  #v(20pt)
  #only("2-")[- $340 = 160 + 36h$]
  #v(20pt)
  #only("3-")[- $180 = 36h$]
  #v(20pt)
  #only("4-")[- $h = 180/36 = 5$]
  #only("1")[
    #voiceover("Now let's solve for h. We start with our equation from the previous step.")
  ]
  #only("2")[
    #voiceover("Distributing the 2, we get 340 equals 160 plus 36h.")
  ]
  #only("3")[
    #voiceover("Subtracting 160 from both sides, we're left with 180 equals 36h.")
  ]
  #only("4")[
    #voiceover("Finally, dividing both sides by 36, we find that h equals 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The height of the cuboid is $5"cm"$. 📏]]
  #v(40pt)
  #only("2-")[💡 Always remember to include units in your answer!]
  #only("1")[
    #voiceover("Therefore, the height of the cuboid is 5 centimeters.")
  ]
  #only("2")[
    #voiceover("Great job solving this problem! Remember, it's always important to include units in your final answer. In this case, the height is measured in centimeters.")
  ]
]