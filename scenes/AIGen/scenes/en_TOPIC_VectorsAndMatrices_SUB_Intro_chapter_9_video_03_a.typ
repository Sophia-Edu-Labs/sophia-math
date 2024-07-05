#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dot Product of Vectors]
#v(40pt)

#only("1-")[
  $vec(a) = (4, 2)$
  #v(10pt)
  $vec(b) = (1, 3)$
]

#only("2-")[
  $vec(a) dot vec(b) = (4 dot 1) + (2 dot 3)$
]

#only("3-")[
  $vec(a) dot vec(b) = 4 + 6 = 10$
]

#only("1")[
#voiceover("Great job! You've correctly calculated the dot product. Let's walk through the solution step-by-step. We start with two vectors:")
]

#only("2")[
#voiceover("To calculate the dot product, we multiply the corresponding components and then sum the results:")
]

#only("3")[
#voiceover("Simplifying, we get 4 plus 6, which equals 10. This is indeed the correct answer!")
]

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
a = np.array([4, 2])
b = np.array([1, 3])

# Create plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot vectors
ax.quiver(0, 0, a[0], a[1], angles='xy', scale_units='xy', scale=1, color='r', label='a=(4,2)')
ax.quiver(0, 0, b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', label='b=(1,3)')

# Set limits and aspect
ax.set_xlim(-1, 5)
ax.set_ylim(-1, 4)
ax.set_aspect('equal')

# Add labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Vectors a and b')

# Add grid and legend
ax.grid(True)
ax.legend()

plt.show()

```,
width: 360pt),
caption: [Visualization of vectors $vec(a)$ and $vec(b)$],
)
]
]
]

#only("4")[
#voiceover("Let's visualize these vectors. The red arrow represents vector a, and the blue arrow represents vector b. The dot product we calculated, 10, represents the sum of the products of their corresponding components.")
]

#only("5-")[
- Dot product: $vec(a) dot vec(b) = 10$
- Geometric interpretation: $vec(a) dot vec(b) = |vec(a)| |vec(b)| cos(theta)$
]

#only("5")[
#voiceover("The dot product has a geometric interpretation too. It's equal to the product of the magnitudes of the vectors and the cosine of the angle between them. This relationship connects algebraic and geometric aspects of vectors.")
]
]