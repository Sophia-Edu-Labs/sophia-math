#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Surface Area of a Cube]
#v(40pt)
How do you calculate the surface area of a cube?
#v(40pt)
#only("-1")[a) 6 × side length]#only("2-")[#text(fill:red)[a) 6 × side length]]
#v(10pt)
#only("-2")[b) side length × side length]#only("3-")[#text(fill:red)[b) side length × side length]]
#v(10pt)
#only("-3")[c) 6 × (side length × side length)]#only("4-")[#text(fill:green)[c) 6 × (side length × side length)]]
#v(10pt)
#only("-4")[d) side length × side length × side length]#only("5-")[#text(fill:red)[d) side length × side length × side length]]

#only("1")[#voiceover("Not quite. Let's review each option to understand why c is the correct choice and why the others are not.")]
#only("2")[#voiceover("Option a, six times side length, is incorrect. This would only give us the sum of the lengths of all edges, not the surface area.")]
#only("3")[#voiceover("Option b, side length times side length, is also wrong. This would only give us the area of one face of the cube, not the entire surface area.")]
#only("4")[#voiceover("Option c, six times side length times side length, is correct! This formula gives us the total surface area of a cube. We'll explain why in a moment.")]
#only("5")[#voiceover("Option d, side length times side length times side length, is incorrect. This formula actually calculates the volume of a cube, not its surface area.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Cube]
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
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])

# Cube faces
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

# Plot cube
ax.add_collection3d(Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set axis labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Set axis limits
ax.set_xlim([0, 1])
ax.set_ylim([0, 1])
ax.set_zlim([0, 1])

plt.title('Cube')
plt.show()

```,
width: 360pt),
)
]
]
]
#only("1")[#voiceover("Let's start by visualizing a cube. A cube is a three-dimensional shape with six identical square faces. Each edge of the cube has the same length, which we call the side length.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Surface Area of a Cube]
#v(40pt)
#only("1-")[- A cube has 6 identical square faces 🎲]
#v(20pt)
#only("2-")[- Area of one face = side length × side length]
#v(20pt)
#only("3-")[- Total surface area = 6 × (area of one face)]
#only("1")[#voiceover("To understand the surface area, let's break it down. First, remember that a cube has six identical square faces.")]
#only("2")[#voiceover("The area of one face is calculated by multiplying the side length by itself. This is because each face is a square.")]
#only("3")[#voiceover("To get the total surface area, we need to add up the areas of all six faces. Since they're all identical, we can simply multiply the area of one face by six.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[The Formula]
#v(40pt)
#only("1-")[Surface Area = 6 × (side length × side length)]
#v(20pt)
#only("2-")[#text(fill: blue)[SA = 6s²], where s is the side length]
#v(20pt)
#only("3-")[💡 This is why option c was correct!]
#only("1")[#voiceover("So, the formula for the surface area of a cube is six times side length times side length.")]
#only("2")[#voiceover("We can write this more concisely as S A equals six s squared, where s represents the side length.")]
#only("3")[#voiceover("This is exactly what option c stated, which is why it was the correct answer!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[If the side length of a cube is 5 cm:]
#v(20pt)
#only("2-")[SA = 6 × (5 cm × 5 cm)]
#v(20pt)
#only("3-")[SA = 6 × 25 cm²]
#v(20pt)
#only("4-")[SA = 150 cm²]
#only("1")[#voiceover("Let's work through an example. Suppose we have a cube with a side length of 5 centimeters.")]
#only("2")[#voiceover("We plug this into our formula: Surface area equals six times five centimeters times five centimeters.")]
#only("3")[#voiceover("Five times five is twenty-five, so we have six times twenty-five square centimeters.")]
#only("4")[#voiceover("Six times twenty-five is one hundred and fifty, so the total surface area is one hundred and fifty square centimeters.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Surface Area of a Cube = 6 × (side length)² 📏]
#v(20pt)
#only("2-")[- Remember: It's not 6 × side length (that's the sum of edge lengths) 🚫]
#v(20pt)
#only("3-")[- It's also not side length³ (that's the volume) 🚫]
#v(20pt)
#only("4-")[- Practice calculating surface areas of different sized cubes! 💪]
#only("1")[#voiceover("To summarize, the surface area of a cube is calculated by multiplying six by the square of the side length.")]
#only("2")[#voiceover("Remember, it's not just six times the side length - that would only give you the sum of the lengths of all edges.")]
#only("3")[#voiceover("And it's not the side length cubed - that would give you the volume of the cube.")]
#only("4")[#voiceover("Keep practicing with different sized cubes to get comfortable with this formula. Great job on understanding this concept!")]
]