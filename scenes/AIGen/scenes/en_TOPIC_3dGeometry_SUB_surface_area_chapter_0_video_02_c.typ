#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Surface Area of a Cube]
#v(40pt)

#only("1-")[How do you calculate the surface area of a cube?]
#v(40pt)

#only("-1")[a) 6 × side length]#only("2-")[#text(fill:red)[a) 6 × side length]]
#v(10pt)
#only("-2")[b) side length × side length]#only("3-")[#text(fill:red)[b) side length × side length]]
#v(10pt)
#only("-3")[c) 6 × (side length × side length)]#only("4-")[#text(fill:green)[c) 6 × (side length × side length)]]
#v(10pt)
#only("-4")[d) side length × side length × side length]#only("5-")[#text(fill:red)[d) side length × side length × side length]]

#only("1")[#voiceover("That's right! Great job!")]
#only("2")[#voiceover("Option a, 6 times side length, is incorrect. This would give us a length, not an area.")]
#only("3")[#voiceover("Option b, side length times side length, is also wrong. This only calculates the area of one face of the cube, not all six.")]
#only("4")[#voiceover("Option c, 6 times side length times side length, is correct! This formula gives us the total surface area of a cube. We'll explain why in a moment.")]
#only("5")[#voiceover("Option d, side length times side length times side length, is incorrect. This actually calculates the volume of a cube, not its surface area.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Cube Surface Area]
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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube points and edges
points = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                   [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])
edges = [[0, 1], [1, 2], [2, 3], [3, 0],
         [4, 5], [5, 6], [6, 7], [7, 4],
         [0, 4], [1, 5], [2, 6], [3, 7]]

# Plot edges
for edge in edges:
    ax.plot3D(*zip(*points[edge]), color="blue")

# Highlight one face
verts = [points[0], points[1], points[2], points[3]]
ax.add_collection3d(Poly3DCollection([verts], facecolors='red', alpha=0.5))

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')
ax.set_title('Cube with One Face Highlighted')

plt.show()

```,
width: 360pt),
)
]
]
]

#only("2-")[🧊 A cube has 6 identical square faces]
#v(20pt)
#only("3-")[📏 Each face's area = side length × side length]
#v(20pt)
#only("4-")[🔢 Total surface area = 6 × (side length × side length)]

#only("1")[#voiceover("Let's visualize a cube to understand its surface area. Here we have a cube with one face highlighted in red.")]
#only("2")[#voiceover("A cube has six identical square faces. Each face contributes to the total surface area.")]
#only("3")[#voiceover("The area of each face is calculated by multiplying the side length by itself. This gives us side length squared.")]
#only("4")[#voiceover("To get the total surface area, we need to account for all six faces. So we multiply the area of one face by 6. This gives us our formula: 6 times side length squared.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)

#only("1-")[Let's calculate the surface area of a cube with side length 4 cm:]
#v(20pt)
#only("2-")[Surface Area = 6 × (side length × side length)]
#v(10pt)
#only("3-")[= 6 × (4 cm × 4 cm)]
#v(10pt)
#only("4-")[= 6 × 16 cm²]
#v(10pt)
#only("5-")[= 96 cm²]

#only("1")[#voiceover("Let's work through an example to solidify our understanding.")]
#only("2")[#voiceover("We'll use our formula: surface area equals 6 times side length squared.")]
#only("3")[#voiceover("If our cube has a side length of 4 centimeters, we substitute this into our formula.")]
#only("4")[#voiceover("4 times 4 gives us 16 square centimeters for one face. We then multiply this by 6.")]
#only("5")[#voiceover("The result is 96 square centimeters. This is the total surface area of our cube.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[📐 Surface Area Formula: 6 × (side length)²]
#v(20pt)
#only("2-")[🔑 Remember: It's not 6 × side length]
#v(20pt)
#only("3-")[📏 Don't confuse with volume: (side length)³]
#v(20pt)
#only("4-")[💡 Practice with different side lengths!]

#only("1")[#voiceover("To summarize, the key formula for a cube's surface area is 6 times the side length squared.")]
#only("2")[#voiceover("It's important to remember that it's not just 6 times the side length. That common mistake would give us a length, not an area.")]
#only("3")[#voiceover("Also, be careful not to confuse surface area with volume. Volume is calculated by side length cubed.")]
#only("4")[#voiceover("To really master this concept, try calculating the surface area for cubes with different side lengths. This practice will help solidify your understanding.")]
]