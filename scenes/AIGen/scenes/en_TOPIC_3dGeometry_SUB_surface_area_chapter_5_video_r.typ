#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Surface Area of Composite Figures 📐]
#v(40pt)
#only("1-")[- Real-world application: Architecture 🏠]
#only("2-")[- Complex structures = Combination of simple shapes]
#only("3-")[- Example: House with main building and garage]
#only("1")[
#voiceover("Let's review the concept of calculating surface areas for composite figures. This is a crucial skill in fields like architecture.")
]
#only("2")[
#voiceover("Complex structures in the real world are often combinations of simpler geometric shapes.")
]
#only("3")[
#voiceover("For instance, consider a house with a main building and an attached garage. Each part can be treated as a separate shape, but they form a composite figure when combined.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Approach to Composite Figures]
#v(40pt)
#only("1-")[1. Break down into component shapes 🧩]
#only("2-")[2. Calculate surface areas separately 🧮]
#only("3-")[3. Subtract overlapping areas 🔍]
#only("4-")[4. Sum up the results 📊]
#only("1")[
#voiceover("Our approach to calculating the surface area of composite figures involves four key steps. First, we break down the figure into its component shapes.")
]
#only("2")[
#voiceover("Next, we calculate the surface areas of these individual shapes separately.")
]
#only("3")[
#voiceover("Then, we identify and subtract any overlapping areas to avoid double-counting.")
]
#only("4")[
#voiceover("Finally, we sum up all the results to get the total surface area of the composite figure.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: L-shaped Building]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Main building
x = [0, 5, 5, 0, 0]
y = [0, 0, 3, 3, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [4]*5, 'b')
for i in range(4):
    ax.plot([x[i], x[i]], [y[i], y[i]], [0, 4], 'b')

# Extension
x = [0, 2, 2, 0, 0]
y = [3, 3, 5, 5, 3]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'r')
ax.plot(x, y, [3]*5, 'r')
for i in range(4):
    ax.plot([x[i], x[i]], [y[i], y[i]], [0, 3], 'r')

ax.set_xlabel('Length (m)')
ax.set_ylabel('Width (m)')
ax.set_zlabel('Height (m)')
ax.set_title('L-shaped Building')

plt.show()

```,
width: 360pt),
caption: [L-shaped building composed of two rectangular prisms]
)
]
]
]
#only("2-")[
- Main building: 5m × 3m × 4m
- Extension: 2m × 2m × 3m
]
#only("1")[
#voiceover("Let's apply our approach to an L-shaped building. This composite figure consists of two rectangular prisms: a main building and an extension.")
]
#only("2")[
#voiceover("The main building measures 5 meters by 3 meters by 4 meters, while the extension is 2 meters by 2 meters by 3 meters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation Steps]
#v(20pt)
#only("1-")[1. Surface area of main building:]
#only("2-")[$"SA"_1 = 2(5 dot 3 + 5 dot 4 + 3 dot 4) = 94 "m"^2$]
#only("3-")[2. Surface area of extension:]
#only("4-")[$"SA"_2 = 2(2 dot 2 + 2 dot 3 + 2 dot 3) = 32 "m"^2$]
#only("5-")[3. Overlapping area:]
#only("6-")[$"OA" = 2 dot 3 = 6 "m"^2$]
#only("7-")[4. Total surface area:]
#only("8-")[$"SA"_"total" = "SA"_1 + "SA"_2 - "OA" = 94 + 32 - 6 = 120 "m"^2$]
#only("1")[
#voiceover("Let's calculate step by step. First, we find the surface area of the main building.")
]
#only("2")[
#voiceover("This is twice the sum of length times width, length times height, and width times height, which equals 94 square meters.")
]
#only("3")[
#voiceover("Next, we calculate the surface area of the extension.")
]
#only("4")[
#voiceover("Using the same formula, we get 32 square meters.")
]
#only("5")[
#voiceover("Now, we need to identify the overlapping area.")
]
#only("6")[
#voiceover("This is where the extension meets the main building, which is 2 meters by 3 meters, or 6 square meters.")
]
#only("7")[
#voiceover("Finally, we sum up the surface areas and subtract the overlapping area.")
]
#only("8")[
#voiceover("This gives us a total surface area of 120 square meters.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points to Remember 🗝️]
#v(40pt)
#only("1-")[- Break down composite figures 🧩]
#only("2-")[- Calculate individual surface areas 🧮]
#only("3-")[- Identify and subtract overlaps 🔍]
#only("4-")[- Sum for total surface area 📊]
#only("1")[
#voiceover("To recap, when dealing with composite figures, always start by breaking them down into simpler shapes.")
]
#only("2")[
#voiceover("Then, calculate the surface areas of these individual components.")
]
#only("3")[
#voiceover("Be sure to identify and subtract any overlapping areas to avoid double-counting.")
]
#only("4")[
#voiceover("Finally, sum up all the parts to get the total surface area. This methodical approach will help you tackle even the most complex composite figures.")
]
]