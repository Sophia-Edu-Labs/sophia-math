#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: The Dot Product 🔢]
  #v(40pt)
  #only("1-")[- Fundamental operation in vector algebra 📐]
  #only("2-")[- Measures similarity between vectors 🤝]
  #only("3-")[- Let's recap its definition and usage 🔍]

  #only("1")[
    #voiceover("Let's review the dot product, a fundamental operation in vector algebra.")
  ]
  #only("2")[
    #voiceover("The dot product is a powerful tool that measures the similarity between two vectors.")
  ]
  #only("3")[
    #voiceover("We'll recap its definition and see how it's used in various applications.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Definition of Dot Product]
  #v(40pt)
  #only("1-")[For vectors $vec(a) = (a_1, a_2, ..., a_n)$ and $vec(b) = (b_1, b_2, ..., b_n)$:]
  #v(20pt)
  #only("2-")[
    $vec(a) dot vec(b) = a_1 b_1 + a_2 b_2 + ... + a_n b_n = sum_(i=1)^n a_i b_i$
  ]
  #v(20pt)
  #only("3-")[Example: $vec(a) = (2, 3)$, $vec(b) = (4, -1)$]
  #only("4-")[$vec(a) dot vec(b) = 2 dot 4 + 3 dot (-1) = 8 - 3 = 5$]

  #only("1")[
    #voiceover("The dot product is defined for two vectors of the same dimension. Let's say we have vectors a and b, each with n components.")
  ]
  #only("2")[
    #voiceover("The dot product of a and b is the sum of the products of their corresponding components. We can write this as a_1 times b_1, plus a_2 times b_2, and so on, up to a_n times b_n.")
  ]
  #only("3")[
    #voiceover("Let's look at a simple example. Consider vector a equals 2, 3 and vector b equals 4, negative 1.")
  ]
  #only("4")[
    #voiceover("To calculate their dot product, we multiply the corresponding components and sum: 2 times 4, plus 3 times negative 1. This gives us 8 minus 3, which equals 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Geometric Interpretation 📐]
  #v(40pt)
  #only("1-")[
    $vec(a) dot vec(b) = |vec(a)| |vec(b)| cos(theta)$
  ]
  #v(20pt)
  #only("2-")[Where:]
  #only("3-")[- $|vec(a)|, |vec(b)|$ are vector magnitudes]
  #only("4-")[- $theta$ is the angle between vectors]
  #v(20pt)
  #only("5-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
a = np.array([3, 4])
b = np.array([4, 2])

# Calculate angle
theta = np.arccos(np.dot(a, b) / (np.linalg.norm(a) * np.linalg.norm(b)))

# Plot
plt.figure(figsize=(8, 6))
plt.quiver(0, 0, a[0], a[1], angles='xy', scale_units='xy', scale=1, color='r', label='a')
plt.quiver(0, 0, b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', label='b')
plt.xlim(-1, 6)
plt.ylim(-1, 6)
plt.gca().set_aspect('equal')
plt.grid(True)
plt.legend()

# Add angle arc and label
r = 1.5
t = np.linspace(0, theta, 100)
x = r * np.cos(t)
y = r * np.sin(t)
plt.plot(x, y, 'g-')
plt.text(r/2, r/2, r'$\theta$', fontsize=16)

plt.title("Geometric Interpretation of Dot Product")
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]

  #only("1")[
    #voiceover("The dot product has a geometric interpretation. It's equal to the product of the magnitudes of the vectors and the cosine of the angle between them.")
  ]
  #only("2")[
    #voiceover("Let's break this down:")
  ]
  #only("3")[
    #voiceover("The vertical bars around a and b represent the magnitudes or lengths of the vectors.")
  ]
  #only("4")[
    #voiceover("Theta is the angle between the two vectors.")
  ]
  #only("5")[
    #voiceover("This diagram illustrates the geometric relationship. The red arrow represents vector a, the blue arrow vector b, and the green arc shows the angle theta between them.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Dot product: $vec(a) dot vec(b) = sum_(i=1)^n a_i b_i$ 🧮]
  #only("2-")[- Geometric interpretation: $vec(a) dot vec(b) = |vec(a)| |vec(b)| cos(theta)$ 📐]
  #only("3-")[- Measures similarity between vectors 🤝]
  #only("4-")[- Used in physics, computer graphics, machine learning 🔬🖥️🤖]

  #only("1")[
    #voiceover("To recap, the dot product of two vectors is the sum of the products of their corresponding components.")
  ]
  #only("2")[
    #voiceover("Geometrically, it's equal to the product of the vector magnitudes and the cosine of the angle between them.")
  ]
  #only("3")[
    #voiceover("This operation provides a measure of similarity between vectors.")
  ]
  #only("4")[
    #voiceover("The dot product is widely used in various fields, including physics for work calculations, computer graphics for lighting effects, and machine learning for similarity measures.")
  ]
]