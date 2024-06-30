#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Surface Area of Cuboids 📦]
#v(40pt)
#only("1-")[- Cuboids are 3D shapes with 6 rectangular faces 🧊]
#only("2-")[- Surface area is the sum of areas of all faces 🔢]
#only("3-")[- We often need to find missing dimensions 🔍]
#only("1")[
#voiceover("Let's review the concept of surface area for cuboids. Cuboids are three-dimensional shapes with six rectangular faces.")
]
#only("2")[
#voiceover("The surface area of a cuboid is the sum of the areas of all its faces.")
]
#only("3")[
#voiceover("In many problems, we need to find a missing dimension when given the surface area and two other dimensions. Let's review how to approach this.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem Setup]
#v(20pt)
#only("1-")[Given:
- Surface Area ($"SA"$)
- Length ($l$)
- Width ($w$)
Find:
- Height ($h$)]
#v(20pt)
#only("2-")[Formula: $"SA" = 2(l w + l h + w h)$]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides
sides = [
    [0, 1], [1, 2], [2, 3], [3, 0],  # Bottom face
    [4, 5], [5, 6], [6, 7], [7, 4],  # Top face
    [0, 4], [1, 5], [2, 6], [3, 7]   # Vertical edges
]

# Plot sides
for s in sides:
    ax.plot3D(*zip(*[vertices[s[0]], vertices[s[1]]]), color='blue')

# Label dimensions
ax.text(l/2, -0.5, 0, 'l', fontsize=14)
ax.text(l+0.5, w/2, 0, 'w', fontsize=14)
ax.text(l+0.5, w+0.5, h/2, 'h', fontsize=14)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid Dimensions')
plt.show()

```,
width: 360pt),
caption: [Cuboid with dimensions],
)
]
]
]
#only("1")[
#voiceover("In our problem, we're given the surface area of a cuboid, along with its length and width. Our task is to find the missing height.")
]
#only("2")[
#voiceover("We'll use the formula for the surface area of a cuboid, which is 2 times the sum of length times width, length times height, and width times height.")
]
#only("3")[
#voiceover("Here's a visual representation of a cuboid with its dimensions labeled. We know l and w, and we need to solve for h.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving for the Missing Dimension]
#v(20pt)
#only("1-")[1. Start with the formula:
   $"SA" = 2(l w + l h + w h)$]
#only("2-")[2. Substitute known values:
   $"SA" = 2(l w + l h + w h)$]
#only("3-")[3. Rearrange to isolate $h$:
   $h = ("SA"/2 - l w) / (l + w)$]
#only("1")[
#voiceover("Let's review the steps to solve for the missing dimension. We start with our surface area formula.")
]
#only("2")[
#voiceover("Next, we substitute the known values for surface area, length, and width into our equation.")
]
#only("3")[
#voiceover("Finally, we rearrange the equation to solve for h. The height equals the surface area divided by 2, minus length times width, all divided by the sum of length and width.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Surface Area formula: $"SA" = 2(l w + l h + w h)$ 📐]
#only("2-")[- Solving for missing dimension: Algebra 🧮]
#only("3-")[- Formula for height: $h = ("SA"/2 - l w) / (l + w)$ 📏]
#only("4-")[- Useful in real-world applications 🏠🎁]
#only("1")[
#voiceover("To recap, we've reviewed the surface area formula for cuboids.")
]
#only("2")[
#voiceover("We've seen how to use algebra to solve for a missing dimension when given the surface area and two other dimensions.")
]
#only("3")[
#voiceover("We derived a formula to directly calculate the height when given the surface area, length, and width.")
]
#only("4")[
#voiceover("This process is useful in many real-world applications, such as packaging design or room painting calculations.")
]
]