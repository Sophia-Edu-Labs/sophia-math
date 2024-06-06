#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
Is $root(4, -16)$ real?
#v(40pt)
#only("2-")[Correct! 🎉]
#only("1")[
#voiceover("Sorry, that's not correct. Let's look at the right solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- $root(4, -16) = root(4, 16 * (-1))$]
#v(20pt)
#only("2-")[- $= root(4, 16) * root(4, -1)$]
#v(20pt)
#only("3-")[- $= 2 * i$]
#v(20pt)
#only("4-")[- $= 2i$, which is not real 🚫]
#only("1")[
#voiceover("Let's solve this step by step. First, we can rewrite the negative 16 as 16 times negative 1.")
]
#only("2")[
#voiceover("Using the property of roots that the 4th root of a product is the product of 4th roots, we can separate this into the 4th root of 16 times the 4th root of negative 1.")
]
#only("3")[
#voiceover("The 4th root of 16 is 2, and the 4th root of negative 1 is the imaginary unit i.")
]
#only("4")[
#voiceover("So, the 4th root of negative 16 is 2i, which is an imaginary number, not a real number.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the real axis
ax.axhline(0, color='black', lw=1)
ax.text(0.1, 0.1, 'Real Axis', fontsize=12)

# Plot the imaginary axis
ax.axvline(0, color='black', lw=1)
ax.text(0.1, 0.9, 'Imaginary Axis', fontsize=12)

# Plot the point 2i
ax.plot(0, 2, 'ro', markersize=10)
ax.text(0.1, 2.1, '2i', fontsize=14)

# Set limits and remove ticks
ax.set_xlim(-1, 1)
ax.set_ylim(-1, 3)
ax.set_xticks([])
ax.set_yticks([])

# Add a title
ax.set_title('Complex Plane', fontsize=16)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("We can visualize this on the complex plane. The real axis is the horizontal line, and the imaginary axis is the vertical line. The number 2i is located 2 units up the imaginary axis, not on the real axis at all.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- $root(4, -16) = 2i$ 🧮]
#v(20pt)
#only("2-")[- Imaginary numbers are not real 🚫]
#v(20pt)
#only("3-")[- Even roots of negative numbers are imaginary 🌌]
#only("1")[
#voiceover("In summary, the 4th root of negative 16 equals 2i.")
]
#only("2")[
#voiceover("Imaginary numbers are not real numbers.")
]
#only("3")[
#voiceover("In general, even roots of negative numbers will always be imaginary, not real.")
]
]