#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Surface Area of a Cube]
#v(40pt)
#only("1-")[#align(center)[#box(width: 200pt, height: 200pt)[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
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

ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('4 cm')
ax.set_ylabel('4 cm')
ax.set_zlabel('4 cm')

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

plt.title("Cube with Side Length 4 cm")
plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]
]]]
#v(20pt)
#only("2-")[- Formula: $"SA" = 6s^2$]
#v(10pt)
#only("3-")[- $s = 4 "cm"$]
#v(10pt)
#only("4-")[- $"SA" = 6 dot (4 "cm")^2$]
#v(10pt)
#only("5-")[- $"SA" = 6 dot 16 "cm"^2 = 96 "cm"^2$]

#only("1")[
#voiceover("Excellent job! You've got the correct answer. Let's walk through the solution step by step. Here we have a cube with a side length of 4 centimeters.")
]
#only("2")[
#voiceover("To find the surface area of a cube, we use the formula: Surface Area equals 6 times s squared, where s is the length of one side. We use 6 because a cube has 6 faces, and each face is a square.")
]
#only("3")[
#voiceover("In this case, we're given that the side length, s, is 4 centimeters.")
]
#only("4")[
#voiceover("Let's plug this into our formula. We get: Surface Area equals 6 times 4 centimeters squared.")
]
#only("5")[
#voiceover("Now, let's calculate. 4 squared is 16, so we have 6 times 16 square centimeters. This gives us 96 square centimeters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[#align(center)[#box(width: 300pt, height: 300pt)[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(10, 10))

# Create a 4x4 grid
grid = np.zeros((4, 4))

# Function to draw a square
def draw_square(x, y, size, color):
    rect = plt.Rectangle((x, y), size, size, fill=True, facecolor=color, edgecolor='black')
    ax.add_patch(rect)

# Draw the unfolded cube
draw_square(1, 1, 1, 'cyan')  # Front
draw_square(0, 1, 1, 'lightblue')  # Left
draw_square(2, 1, 1, 'skyblue')  # Right
draw_square(1, 0, 1, 'paleturquoise')  # Bottom
draw_square(1, 2, 1, 'mediumturquoise')  # Top
draw_square(3, 1, 1, 'teal')  # Back

# Set limits and remove axes
ax.set_xlim(0, 4)
ax.set_ylim(0, 3)
ax.axis('off')

# Add labels
for i in range(6):
    x = i % 4
    y = 2 - (i // 4)
    ax.text(x + 0.5, y + 0.5, f'4 cm', ha='center', va='center', fontsize=12)
    ax.text(x + 0.5, y + 0.3, f'4 cm', ha='center', va='center', fontsize=12)

plt.title("Unfolded Cube: 6 Faces", fontsize=16)
plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]
]]]
#v(20pt)
#only("2-")[- Each face: $4 "cm" × 4 "cm" = 16 "cm"^2$]
#v(10pt)
#only("3-")[- Total: $16 "cm"^2 × 6 "faces" = 96 "cm"^2$]

#only("1")[
#voiceover("To visualize this better, let's unfold our cube. Here we can see all six faces of the cube laid out flat.")
]
#only("2")[
#voiceover("Each face is a square with sides of 4 centimeters. The area of each face is therefore 4 centimeters times 4 centimeters, which equals 16 square centimeters.")
]
#only("3")[
#voiceover("Since we have 6 of these faces, we multiply 16 square centimeters by 6, giving us our total surface area of 96 square centimeters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Surface Area = $96 "cm"^2$ 📏]
#v(20pt)
#only("2-")[- Remember: $"SA" = 6s^2$ for any cube 🧊]
#v(20pt)
#only("3-")[- Practice with different side lengths! 💪]

#only("1")[
#voiceover("So, we've confirmed that the surface area of a cube with side length 4 centimeters is indeed 96 square centimeters.")
]
#only("2")[
#voiceover("Remember, for any cube, you can always use the formula: Surface Area equals 6 times s squared, where s is the length of one side.")
]
#only("3")[
#voiceover("To reinforce your understanding, try calculating the surface area for cubes with different side lengths. This will help you become more comfortable with the formula and the concept. Great job on solving this problem!")
]
]