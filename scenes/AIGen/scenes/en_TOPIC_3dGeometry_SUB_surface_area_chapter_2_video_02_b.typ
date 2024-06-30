#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Surface Area of a Cuboid]
#v(40pt)
How do you calculate the surface area of a cuboid?
#v(40pt)
#only("-1")[a) Length × Width × Height]#only("2-")[#text(fill:red)[a) Length × Width × Height]]
#v(10pt)
#only("-2")[b) 2(Length × Width + Length × Height + Width × Height)]#only("3-")[#text(fill:green)[b) 2(Length × Width + Length × Height + Width × Height)]]
#v(10pt)
#only("-3")[c) Length + Width + Height]#only("4-")[#text(fill:red)[c) Length + Width + Height]]
#v(10pt)
#only("-4")[d) 6 × (Length × Width)]#only("5-")[#text(fill:red)[d) 6 × (Length × Width)]]

#only("1")[#voiceover("Excellent job! You've answered correctly. Let's go through each option to understand why b is the right answer and why the others are incorrect.")]
#only("2")[#voiceover("Option a, Length times Width times Height, is incorrect. This formula actually calculates the volume of a cuboid, not its surface area.")]
#only("3")[#voiceover("Option b, two times the sum of Length times Width, Length times Height, and Width times Height, is correct. This is indeed the formula for calculating the surface area of a cuboid. We'll explain why in a moment.")]
#only("4")[#voiceover("Option c, Length plus Width plus Height, is incorrect. This calculation doesn't represent any meaningful measurement of a cuboid.")]
#only("5")[#voiceover("Option d, six times Length times Width, is also incorrect. While it's close, as it recognizes that a cuboid has six faces, it only accounts for one type of face.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Cuboid]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])

# Cuboid faces
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid')
plt.show()

```,
width: 360pt),
)
]
]
]
#only("1")[#voiceover("Let's start by visualizing a cuboid. A cuboid, also known as a rectangular prism, has six rectangular faces. Each pair of opposite faces is identical.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Breaking Down the Formula]
#v(40pt)
#only("1-")[2(Length × Width + Length × Height + Width × Height)]
#v(20pt)
#only("2-")[= 2("lw"+ "lh" + "wh")]
#v(20pt)
#only("3-")[Where L = Length, W = Width, H = Height]

#only("1")[#voiceover("Now, let's break down the correct formula: two times the sum of Length times Width, Length times Height, and Width times Height.")]
#only("2")[#voiceover("We can simplify this notation by using L for Length, W for Width, and H for Height.")]
#only("3")[#voiceover("This formula accounts for all six faces of the cuboid. Let's see how in the next slide.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Explaining the Formula]
#v(40pt)
#only("1-")[- Front and Back: 2 × (L × H)]
#only("2-")[- Left and Right: 2 × (W × H)]
#only("3-")[- Top and Bottom: 2 × (L × W)]
#v(20pt)
#only("4-")[Total: 2(LH + WH + LW)]

#only("1")[#voiceover("The front and back faces are identical, each with an area of Length times Height. We multiply by two to account for both faces.")]
#only("2")[#voiceover("Similarly, the left and right faces each have an area of Width times Height, again multiplied by two.")]
#only("3")[#voiceover("Finally, the top and bottom faces each have an area of Length times Width, once more multiplied by two.")]
#only("4")[#voiceover("When we add these all together, we get two times the sum of Length times Height, Width times Height, and Length times Width - exactly our formula!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Other Options are Incorrect]
#v(40pt)
#only("1-")[a) L × W × H = Volume, not surface area 📦]
#v(20pt)
#only("2-")[c) L + W + H = Not a meaningful measurement 🤔]
#v(20pt)
#only("3-")[d) 6 × (L × W) = Only accounts for one type of face 🔲]

#only("1")[#voiceover("Option a, Length times Width times Height, calculates the volume of the cuboid, which measures its three-dimensional space, not its surface area.")]
#only("2")[#voiceover("Option c, Length plus Width plus Height, doesn't represent any meaningful measurement of a cuboid. It's simply adding three lengths together without considering area.")]
#only("3")[#voiceover("Option d, six times Length times Width, recognizes that a cuboid has six faces, but incorrectly assumes all faces have the same dimensions as the Length-Width face.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Surface Area of a Cuboid = 2("lw"+ "lh" + "wh") 📏]
#v(20pt)
#only("2-")[- Accounts for all 6 faces of the cuboid 🧊]
#v(20pt)
#only("3-")[- Different from volume (L × W × H) 📦]

#only("1")[#voiceover("To summarize, the surface area of a cuboid is calculated by the formula: two times the sum of Length times Width, Length times Height, and Width times Height.")]
#only("2")[#voiceover("This formula accounts for all six faces of the cuboid, considering that opposite faces have the same dimensions.")]
#only("3")[#voiceover("Remember, this is different from the volume, which is Length times Width times Height. Surface area measures the total area of all outer faces, while volume measures the three-dimensional space inside the cuboid.")]
]