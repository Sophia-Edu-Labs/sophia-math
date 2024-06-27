#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Surface Area of Cubes 📦]
#v(40pt)
#only("1-")[- Imagine wrapping a gift box 🎁]
#only("2-")[- How much wrapping paper do we need? 🤔]
#only("3-")[- Surface area helps us calculate this! 📏]

#only("1")[
#voiceover("Let's review the concept of surface area for cubes. Imagine you're wrapping a gift box.")
]
#only("2")[
#voiceover("How would you determine how much wrapping paper you need?")
]
#only("3")[
#voiceover("This is where the concept of surface area comes in handy!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Cube Properties 🧊]
#v(40pt)
#only("1-")[- 6 square faces 🔲]
#only("2-")[- All sides equal length 📏]
#only("3-")[- Example: Side length $s$ = 3 cm]

#only("1")[
#voiceover("Let's recall the properties of a cube. A cube has 6 square faces.")
]
#only("2")[
#voiceover("All sides of a cube have equal length.")
]
#only("3")[
#voiceover("For example, let's consider a cube with a side length of 3 centimeters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating Surface Area]
#v(40pt)
#only("1-")[1. Area of one face: $s^2$]
#only("2-")[2. Multiply by 6 faces]
#only("3-")[3. Formula: $"SA" = 6s^2$]

#only("1")[
#voiceover("To calculate the surface area, we first find the area of one face. The area of a square is side length squared.")
]
#only("2")[
#voiceover("Since a cube has 6 identical faces, we multiply this area by 6.")
]
#only("3")[
#voiceover("This gives us the formula for the surface area of a cube: S A equals 6 times s squared, where s is the side length.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[Cube side length: $s = 3"cm"$]
#v(10pt)
#only("2-")[Surface Area: $"SA" = 6s^2$]
#v(10pt)
#only("3-")[$"SA" = 6 dot (3"cm")^2$]
#v(5pt)
#only("4-")[$"SA" = 6 dot 9"cm"^2 = 54"cm"^2$]

#only("1")[
#voiceover("Let's use our example cube with a side length of 3 centimeters.")
]
#only("2")[
#voiceover("We apply the formula: Surface Area equals 6 times s squared.")
]
#only("3")[
#voiceover("Substituting 3 centimeters for s, we get 6 times 3 centimeters squared.")
]
#only("4")[
#voiceover("This equals 6 times 9 square centimeters, which gives us a total surface area of 54 square centimeters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization 👁️]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 6))
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

ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Annotate side length
ax.text(0.5, -0.1, -0.1, 's', fontsize=14)

# Annotate one face
ax.text(0.4, 0.4, -0.1, '$s^2$', fontsize=14)

plt.title("Cube Surface Area", fontsize=16)
ax.set_box_aspect((1,1,1))
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Cube with side length $s$],
)
]
]
]

#only("1")[
#voiceover("Here's a visual representation of our cube. Each face has an area of s squared, where s is the side length. To get the total surface area, we sum up the areas of all six faces.")
]

#v(20pt)
#only("2-")[$"Total Surface Area" = 6 dot "Face Area"$]


#only("3-")[$"SA" = 6 dot s^2$]

#only("2")[
#voiceover("The total surface area is 6 times the area of one face.")
]
#only("3")[
#voiceover("This gives us our formula: Surface Area equals 6 times s squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Cube has 6 identical square faces 🔲]
#only("2-")[- Surface Area = Area of one face × 6]
#only("3-")[- Formula: $"SA" = 6s^2$]
#only("4-")[- Example: For $s = 3"cm"$, $"SA" = 54"cm"^2$]

#only("1")[
#voiceover("To recap, a cube has 6 identical square faces.")
]
#only("2")[
#voiceover("The surface area is calculated by finding the area of one face and multiplying by 6.")
]
#only("3")[
#voiceover("This gives us the formula: Surface Area equals 6 times s squared, where s is the side length.")
]
#only("4")[
#voiceover("For our example cube with a side length of 3 centimeters, we calculated a surface area of 54 square centimeters.")
]
]