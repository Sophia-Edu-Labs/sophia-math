#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Surface Area of Composite Figures]
#v(40pt)
How do you find the surface area of a composite figure?
#v(40pt)
#only("-1")[a) Multiply all dimensions]#only("2-")[#text(fill:red)[a) Multiply all dimensions]]
#v(10pt)
#only("-2")[b) Add the volumes of each part]#only("3-")[#text(fill:red)[b) Add the volumes of each part]]
#v(10pt)
#only("-3")[c) Add the surface areas of each part, subtracting overlapping areas]#only("4-")[#text(fill:green)[c) Add the surface areas of each part, subtracting overlapping areas]]
#v(10pt)
#only("-4")[d) Subtract the smaller figure from the larger]#only("5-")[#text(fill:red)[d) Subtract the smaller figure from the larger]]

#only("1")[#voiceover("Not quite. Let's go through each option to understand why c is the correct answer.")]
#only("2")[#voiceover("Option a, multiply all dimensions, is incorrect. This would give us a volume, not a surface area.")]
#only("3")[#voiceover("Option b, add the volumes of each part, is also wrong. We're looking for surface area, not volume.")]
#only("4")[#voiceover("Option c is correct! To find the surface area of a composite figure, we add the surface areas of each part, making sure to subtract any overlapping areas.")]
#only("5")[#voiceover("Option d, subtract the smaller figure from the larger, is incorrect. This method doesn't account for all surfaces and wouldn't give us the total surface area.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Composite Figures]
#v(40pt)
#only("1-")[- Composite figures = made up of multiple basic shapes 🧩]
#v(20pt)
#only("2-")[- Example: Cylinder on top of a cube 🎩]
#v(20pt)
#only("3-")[- Each part contributes to the total surface area 📊]

#only("1")[#voiceover("Let's start by understanding what composite figures are. Composite figures are shapes made up of multiple basic shapes combined together.")]
#only("2")[#voiceover("For example, imagine a cylinder sitting on top of a cube. This is a composite figure.")]
#only("3")[#voiceover("Each part of this composite figure - the cylinder and the cube - contributes to the total surface area.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Approach]
#v(40pt)
#only("1-")[1️⃣ Identify individual shapes]
#v(20pt)
#only("2-")[2️⃣ Calculate surface area of each shape]
#v(20pt)
#only("3-")[3️⃣ Identify overlapping areas]
#v(20pt)
#only("4-")[4️⃣ Subtract overlapping areas]
#v(20pt)
#only("5-")[5️⃣ Add remaining surface areas]

#only("1")[#voiceover("Now, let's break down the process of finding the surface area of a composite figure. First, we need to identify the individual shapes that make up our composite figure.")]
#only("2")[#voiceover("Next, we calculate the surface area of each individual shape.")]
#only("3")[#voiceover("Then, we identify any areas where these shapes overlap.")]
#only("4")[#voiceover("We subtract these overlapping areas to avoid counting them twice.")]
#only("5")[#voiceover("Finally, we add up all the remaining surface areas to get our total.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Cylinder on a Cube]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(8,8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 2]
for s, e in zip(np.array(list(zip(r, r, r))), np.array(list(zip(r[::-1], r[::-1], r[::-1])))):
    ax.plot3D(*zip(s, e), color="b")

# Cylinder
x = np.linspace(0, 2, 100)
z = np.linspace(2, 4, 100)
Xc, Zc = np.meshgrid(x, z)
Yc = np.sqrt(1 - (Xc-1)**2)

ax.plot_surface(Xc, Yc+1, Zc, alpha=0.5)
ax.plot_surface(Xc, -Yc+1, Zc, alpha=0.5)

ax.set_xlim(0, 2)
ax.set_ylim(0, 2)
ax.set_zlim(0, 4)
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cylinder on a Cube')

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Let's consider an example: a cylinder sitting on top of a cube. Here's a visual representation of our composite figure.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating Surface Area]
#v(40pt)
#only("1-")[1. Cube surface area: $"SA"_"cube" = 6s^2$]
#v(20pt)
#only("2-")[2. Cylinder surface area: $"SA"_"cylinder" = 2pi r^2 + 2pi r h$]
#v(20pt)
#only("3-")[3. Overlapping area: $"SA"_"overlap" = pi r^2$]
#v(20pt)
#only("4-")[4. Total surface area: $"SA"_"total" = "SA"_"cube" + "SA"_"cylinder" - "SA"_"overlap"$]

#only("1")[#voiceover("Let's calculate the surface area step by step. First, we calculate the surface area of the cube. It's given by six times the square of its side length.")]
#only("2")[#voiceover("Next, we calculate the surface area of the cylinder. It's the sum of the areas of its two circular bases and its curved surface.")]
#only("3")[#voiceover("Now, we identify the overlapping area. It's the bottom of the cylinder, which is a circle.")]
#only("4")[#voiceover("Finally, we add the surface areas of the cube and cylinder, and subtract the overlapping area to get our total surface area.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Break down composite figures into basic shapes 🧩]
#v(20pt)
#only("2-")[- Calculate surface area of each shape separately 🧮]
#v(20pt)
#only("3-")[- Remember to subtract overlapping areas ➖]
#v(20pt)
#only("4-")[- Practice with different combinations of shapes 🏋️]

#only("1")[#voiceover("To summarize, when dealing with composite figures, always start by breaking them down into basic shapes.")]
#only("2")[#voiceover("Calculate the surface area of each shape separately using the appropriate formulas.")]
#only("3")[#voiceover("Don't forget to identify and subtract any overlapping areas to avoid counting them twice.")]
#only("4")[#voiceover("The more you practice with different combinations of shapes, the better you'll become at calculating surface areas of composite figures. Keep up the great work!")]
]