#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Vector Addition and Dimension 🧮]
#v(40pt)
#only("1-")[- Vectors are essential in physics and mathematics 🔬]
#only("2-")[- We'll review how to add vectors and understand their dimension 📏]
#only("3-")[- This helps in solving real-world problems 🌍]

#only("1")[
#voiceover("Let's review vector addition and dimension. Vectors are fundamental tools in physics and mathematics.")
]
#only("2")[
#voiceover("We'll revisit how to add vectors and understand what their dimension means.")
]
#only("3")[
#voiceover("These concepts are crucial for solving many real-world problems, from navigation to computer graphics.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Addition 🔢]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
v1 = np.array([2, 1])
v2 = np.array([1, 2])
v_sum = v1 + v2

# Plot
plt.figure(figsize=(8, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='v1 = (2, 1)')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='v2 = (1, 2)')
plt.quiver(0, 0, v_sum[0], v_sum[1], angles='xy', scale_units='xy', scale=1, color='g', label='v1 + v2 = (3, 3)')

plt.xlim(-0.5, 4)
plt.ylim(-0.5, 4)
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.grid(True)
plt.legend()
plt.title('Vector Addition')
plt.xlabel('x')
plt.ylabel('y')

plt.show()

```,
width: 360pt),
caption: [Vector Addition Visualization],
)
]
]
]

#v(20pt)
#only("2-")[- To add vectors, add corresponding components]
#only("3-")[$vec(v)_1 + vec(v)_2 = (2, 1) + (1, 2) = (3, 3)$]

#only("1")[
#voiceover("Let's review vector addition. In this diagram, we have two vectors: v1 in red and v2 in blue.")
]
#only("2")[
#voiceover("To add vectors, we simply add their corresponding components.")
]
#only("3")[
#voiceover("For example, vector v1 is (2, 1) and vector v2 is (1, 2). Adding these, we get (2 plus 1, 1 plus 2), which equals (3, 3). This is represented by the green vector in our diagram.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Dimension 📏]
#v(40pt)
#only("1-")[- Dimension = number of components in the vector]
#only("2-")[- 2D vector: $(x, y)$ - 2 components]
#only("3-")[- 3D vector: $(x, y, z)$ - 3 components]
#only("4-")[- n-dimensional vector: $n$ components]

#only("1")[
#voiceover("Now, let's review the concept of vector dimension.")
]
#only("2")[
#voiceover("A two-dimensional vector, like (x, y), has two components.")
]
#only("3")[
#voiceover("A three-dimensional vector, (x, y, z), has three components.")
]
#only("4")[
#voiceover("In general, an n-dimensional vector has n components.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Vector addition: Add corresponding components 🔢]
#only("2-")[- $(a, b) + (c, d) = (a+c, b+d)$]
#only("3-")[- Vector dimension: Number of components 📏]
#only("4-")[- Crucial for various applications 🌍]

#only("1")[
#voiceover("To summarize, we've reviewed that vector addition is performed by adding corresponding components.")
]
#only("2")[
#voiceover("For example, (a, b) plus (c, d) equals (a plus c, b plus d).")
]
#only("3")[
#voiceover("The dimension of a vector is simply the number of components it has.")
]
#only("4")[
#voiceover("These concepts are crucial in various fields, from physics to computer graphics, helping us model and solve complex problems in multiple dimensions.")
]
]