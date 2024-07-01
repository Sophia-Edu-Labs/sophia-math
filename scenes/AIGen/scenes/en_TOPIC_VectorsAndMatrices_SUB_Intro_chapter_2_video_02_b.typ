#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dot Product Calculation]
#v(40pt)

#only("1-")[Let's calculate the dot product of vectors $vec(3, 4)$ and $vec(1, 2)$:]
#v(20pt)

#only("2-")[$(3, 4) dot (1, 2)$]
#v(10pt)

#only("3-")[$ = 3 dot 1 + 4 dot 2$]
#v(10pt)

#only("4-")[$ = 3 + 8$]
#v(10pt)

#only("5-")[$ = 11$]

#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step.")
]

#only("2")[
#voiceover("We start with our two vectors: (3, 4) and (1, 2).")
]

#only("3")[
#voiceover("To calculate the dot product, we multiply the corresponding components and then add the results. So, we multiply 3 by 1, and 4 by 2.")
]

#only("4")[
#voiceover("This gives us 3 plus 8.")
]

#only("5")[
#voiceover("Adding these together, we get 11, which is our final answer.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Geometric Interpretation]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
v1 = np.array([3, 4])
v2 = np.array([1, 2])

# Create plot
fig, ax = plt.subplots(figsize=(8, 8))

# Plot vectors
ax.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(3, 4)')
ax.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='(1, 2)')

# Set limits and aspect
ax.set_xlim(-1, 5)
ax.set_ylim(-1, 5)
ax.set_aspect('equal')

# Add labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Vectors (3, 4) and (1, 2)')

# Add grid and legend
ax.grid(True)
ax.legend()

plt.show()

```,
width: 360pt),
caption: [Vectors (3, 4) and (1, 2)],
)
]
]

#only("1")[
#voiceover("Now, let's look at the geometric interpretation of these vectors.")
]

#only("2")[
#voiceover("The red vector represents (3, 4), while the blue vector represents (1, 2).")
]

#only("3")[
#voiceover("The dot product we calculated, 11, is related to the magnitudes of these vectors and the angle between them.")
]

#only("4")[
#voiceover("In fact, the dot product is equal to the product of the magnitudes of the vectors and the cosine of the angle between them.")
]

#only("5")[
#voiceover("This geometric interpretation helps us understand why the dot product is useful in many applications, such as calculating work in physics or finding projections in linear algebra.")
]
]