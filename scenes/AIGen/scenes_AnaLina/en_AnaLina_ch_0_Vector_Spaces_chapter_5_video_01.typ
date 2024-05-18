#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Generating Sets 🌟]
#v(40pt)
#only("1-")[- Also known as spanning sets 🌌]
#v(20pt)
#only("2-")[- A set of vectors whose linear combinations fill the entire vector space 🧩]
#only("1")[
#voiceover("In linear algebra, a generating set, also known as a spanning set, is a crucial concept in understanding vector spaces.")
]
#only("2")[
#voiceover("A generating set is a set of vectors whose linear combinations fill the entire vector space. In other words, every vector in the space can be expressed as a linear combination of the vectors in the generating set.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example in ℝ²]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v1 = np.array([1, 0])
v2 = np.array([0, 1])

fig, ax = plt.subplots(figsize=(6, 6))

ax.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(1, 0)')
ax.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='(0, 1)')

ax.set_xlim(-2, 2)
ax.set_ylim(-2, 2)
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's consider an example in the two-dimensional real vector space, denoted as ℝ². The set of vectors (1, 0) and (0, 1) forms a generating set for ℝ².")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear Combinations 🧮]
#v(40pt)
#only("1-")[$ a mat(1;0) + b mat(0;1) = mat(a;b) $, where $a, b ∈ ℝ$]
#v(20pt)
#only("2-")[Any vector $mat(x;y)$ in ℝ² can be expressed as $x mat(1;0) + y mat(0;1)$]
#only("1")[
#voiceover("Any linear combination of these vectors, which can be written as a times (1, 0) plus b times (0, 1), where a and b are real numbers, results in a vector (a, b) in ℝ².")
]
#only("2")[
#voiceover("In fact, any vector (x, y) in ℝ² can be expressed as x times (1, 0) plus y times (0, 1). This means that the set {(1, 0), (0, 1)} spans the entire vector space ℝ².")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Generating set (spanning set): A set of vectors whose linear combinations fill the entire vector space 🎨]
#v(20pt)
#only("2-")[- Every vector in the space can be expressed as a linear combination of the vectors in the generating set 🧱]
#only("1")[
#voiceover("To summarize, a generating set, or spanning set, is a set of vectors whose linear combinations fill the entire vector space.")
]
#only("2")[
#voiceover("Every vector in the space can be expressed as a linear combination of the vectors in the generating set. This concept is fundamental in understanding the structure and properties of vector spaces.")
]
]