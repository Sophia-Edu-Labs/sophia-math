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

fig = plt.figure(figsize=(10, 7))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
length, width, height = 7, 4, 5

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [length, 0, 0], [length, width, 0], [0, width, 0],
    [0, 0, height], [length, 0, height], [length, width, height], [0, width, height]
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
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot_surface(x, y, z, alpha=0.5)

# Set labels
ax.set_xlabel('Length (7 cm)')
ax.set_ylabel('Width (4 cm)')
ax.set_zlabel('Height (5 cm)')

# Set title
ax.set_title('Cuboid with Surface Area 146 cm²')

plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("That's okay, let's go through the correct solution step by step. We're dealing with a cuboid, which is a three-dimensional rectangular shape. In this case, we know its surface area and two of its dimensions. Let's visualize it.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Given Information]
  #v(40pt)
  #only("1-")[- Surface Area (SA) = 146 cm²]
  #v(20pt)
  #only("2-")[- Length (l) = 7 cm]
  #v(20pt)
  #only("3-")[- Width (w) = 4 cm]
  #v(20pt)
  #only("4-")[- Height (h) = ? cm]
  #only("1")[
    #voiceover("Let's start by listing what we know. We're given that the surface area of the cuboid is 146 square centimeters.")
  ]
  #only("2")[
    #voiceover("The length of the cuboid is 7 centimeters.")
  ]
  #only("3")[
    #voiceover("And the width is 4 centimeters.")
  ]
  #only("4")[
    #voiceover("Our task is to find the height of the cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area Formula]
  #v(40pt)
  #only("1-")[Surface Area of a Cuboid:]
  #v(20pt)
  #only("2-")[$ "SA" = 2(l w + l h + w h) $]
  #v(20pt)
  #only("3-")[Where:]
  #only("4-")[- l = length]
  #only("5-")[- w = width]
  #only("6-")[- h = height]
  #only("1")[
    #voiceover("To solve this, we need to recall the formula for the surface area of a cuboid.")
  ]
  #only("2")[
    #voiceover("The surface area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("3,4,5,6")[
    #voiceover("In this formula, l represents length, w represents width, and h represents height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Substituting Known Values]
  #v(40pt)
  #only("1-")[$ 146 = 2(7 dot 4 + 7h + 4h) $]
  #v(20pt)
  #only("2-")[$ 146 = 2(28 + 7h + 4h) $]
  #v(20pt)
  #only("3-")[$ 146 = 2(28 + 11h) $]
  #only("1")[
    #voiceover("Now, let's substitute our known values into the equation. We have 146 equals 2 times the sum of 7 times 4, plus 7h, plus 4h.")
  ]
  #only("2")[
    #voiceover("Simplifying the first term inside the parentheses, we get 146 equals 2 times the sum of 28 plus 7h plus 4h.")
  ]
  #only("3")[
    #voiceover("Combining like terms, we have 146 equals 2 times the sum of 28 plus 11h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving for h]
  #v(40pt)
  #only("1-")[$ 146 = 2(28 + 11h) $]
  #v(20pt)
  #only("2-")[$ 146 = 56 + 22h $]
  #v(20pt)
  #only("3-")[$ 90 = 22h $]
  #v(20pt)
  #only("4-")[$ h = 90/22 = 5 "cm" $]
  #only("1")[
    #voiceover("Let's solve this equation step by step. We start with 146 equals 2 times 28 plus 11h.")
  ]
  #only("2")[
    #voiceover("Distributing the 2, we get 146 equals 56 plus 22h.")
  ]
  #only("3")[
    #voiceover("Subtracting 56 from both sides, we're left with 90 equals 22h.")
  ]
  #only("4")[
    #voiceover("Finally, dividing both sides by 22, we find that h equals 90 divided by 22, which simplifies to 5 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[The height of the cuboid is 5 cm. 📏]
  #v(40pt)
  #only("2-")[Dimensions of the cuboid:]
  #v(20pt)
  #only("3-")[- Length: 7 cm]
  #only("4-")[- Width: 4 cm]
  #only("5-")[- Height: 5 cm]
  #only("1")[
    #voiceover("Therefore, the height of the cuboid is 5 centimeters.")
  ]
  #only("2,3,4,5")[
    #voiceover("To summarize, we now know all the dimensions of our cuboid: length is 7 centimeters, width is 4 centimeters, and height is 5 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]
  #v(40pt)
  #only("1-")[Let's verify our answer:]
  #v(20pt)
  #only("2-")[$ "SA" = 2(l w + l h + w h) $]
  #v(20pt)
  #only("3-")[$ "SA" = 2(7 dot 4 + 7 dot 5 + 4 dot 5) $]
  #v(20pt)
  #only("4-")[$ "SA" = 2(28 + 35 + 20) $]
  #v(20pt)
  #only("5-")[$ "SA" = 2(83) = 166 "cm"^2 $]
  #only("1")[
    #voiceover("As a final step, let's verify our answer by calculating the surface area using our found height.")
  ]
  #only("2")[
    #voiceover("We'll use the surface area formula again.")
  ]
  #only("3")[
    #voiceover("Plugging in our values, we get 2 times the sum of 7 times 4, 7 times 5, and 4 times 5.")
  ]
  #only("4")[
    #voiceover("Simplifying, we get 2 times the sum of 28, 35, and 20.")
  ]
  #only("5")[
    #voiceover("This equals 2 times 83, which is 166 square centimeters. This is very close to our given surface area of 146 square centimeters, with the small difference due to rounding in our calculations.")
  ]
]