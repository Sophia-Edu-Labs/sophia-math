#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Converting 9/2 to a Decimal]

#only("1")[
#voiceover("Great job on solving this problem! Let's go through the process of converting nine halves to a decimal step by step.")
]

#v(40pt)

#only("2-")[- Fraction: $9/2$]
#v(20pt)
#only("3-")[- Division: $9 ÷ 2$]

#only("2")[
#voiceover("We start with the fraction nine over two.")
]

#only("3")[
#voiceover("To convert a fraction to a decimal, we need to divide the numerator by the denominator. In this case, we'll divide 9 by 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Long Division]

#v(20pt)

#only("1-")[
#align(center)[
#table(
 columns: (auto, auto, auto, auto),
 inset: 10pt,
 align: horizon + center,
 [4],
 [.],
 [5],
 [],
 [2],
 [9],
 [.],
 [0],
 [],
 [8],
 [],
 [],
 [],
 [1],
 [],
 [],
 [],
 [0],
 [],
 []
)
]
]

#only("1")[
#voiceover("Let's perform long division. We start by dividing 9 by 2.")
]

#only("2")[
#voiceover("2 goes into 9 four times with a remainder of 1.")
]

#only("3")[
#voiceover("We add a decimal point and a zero after the 9, bringing down the 0.")
]

#only("4")[
#voiceover("2 goes into 10 five times with no remainder.")
]

#only("5")[
#voiceover("Therefore, 9 divided by 2 equals 4.5")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Result]

#v(40pt)

#only("1-")[#text(size: 24pt)[$ 9/2 = 4.5 $]]

#v(20pt)

#only("2-")[#text(size: 20pt)[In decimal form: 4.5]]
#v(10pt)
#only("3-")[#text(size: 20pt)[As a mixed number: $4 1/2$]]

#only("1")[
#voiceover("So, we've found that nine halves, when converted to a decimal, equals four point five.")
]

#only("2")[
#voiceover("We can express this in decimal form as simply 4.5,")
]

#only("3")[
#voiceover("or as a mixed number, which would be four and one half.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]

#v(20pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create the figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Create a circle
circle = plt.Circle((0, 0), 1, fill=False)

# Add the circle to the axis
ax.add_artist(circle)

# Draw lines to divide the circle
for angle in np.linspace(0, 2*np.pi, 9):
   x = np.cos(angle)
   y = np.sin(angle)
   ax.plot([0, x], [0, y], 'k-')

# Fill 4.5 parts of the circle
for i in range(4):
   wedge = plt.Wedge((0, 0), 1, i*45, (i+1)*45, fc='skyblue', ec='none')
   ax.add_artist(wedge)
wedge = plt.Wedge((0, 0), 1, 180, 202.5, fc='skyblue', ec='none')
ax.add_artist(wedge)

# Set the aspect of the plot to be equal
ax.set_aspect('equal', adjustable='box')

# Remove the axes
ax.axis('off')

# Add a title
plt.title('Visual Representation of 9/2 = 4.5', fontsize=14)

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Here's a visual representation of nine halves or four point five. Imagine a circle divided into 8 equal parts. Four full parts plus half of another part gives us four and a half, or nine halves. This visualization helps us understand the decimal and fractional representations of the number.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("1-")[- $9/2 = 4.5$ 🔢]
#v(20pt)
#only("2-")[- Fraction to decimal: divide numerator by denominator ➗]
#v(20pt)
#only("3-")[- Mixed number: whole number + proper fraction 🔢+🍕]

#only("1")[
#voiceover("To sum up, we've learned that nine halves equals four point five when converted to a decimal.")
]

#only("2")[
#voiceover("Remember, to convert a fraction to a decimal, we divide the numerator by the denominator.")
]

#only("3")[
#voiceover("We can also express this as a mixed number: four and one half. This process of converting between fractions, decimals, and mixed numbers is a fundamental skill in mathematics that you'll use often.")
]
]