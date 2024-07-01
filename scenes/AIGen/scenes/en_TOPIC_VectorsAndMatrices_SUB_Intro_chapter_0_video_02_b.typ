#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Vectors]
#v(40pt)

Which of the following best describes a vector?

#v(20pt)
#only("-1")[a) A single number]#only("2-")[#text(fill:red)[a) A single number]]
#v(10pt)
#only("-2")[b) A multi-dimensional number]#only("3-")[#text(fill:green)[b) A multi-dimensional number]]
#v(10pt)
#only("-3")[c) A rectangular array of numbers]#only("4-")[#text(fill:red)[c) A rectangular array of numbers]]
#v(10pt)
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("Excellent job! You've chosen the correct answer. Let's break down why b) A multi-dimensional number is the best description of a vector.")]

#only("2")[#voiceover("Option a) A single number is incorrect. A single number is a scalar, not a vector. Vectors typically have multiple components, unlike scalars which are just single values.")]

#only("3")[#voiceover("Option b) A multi-dimensional number is correct! This is the best description of a vector. A vector can be thought of as a number with multiple dimensions or components. For example, in two-dimensional space, a vector has both an x and a y component.")]

#only("4")[#voiceover("Option c) A rectangular array of numbers is not the best description for a vector. While vectors can be represented as arrays, this description better fits matrices, which are two-dimensional arrays of numbers.")]

#only("5")[#voiceover("Option d) None of the above is incorrect because we do have a correct option, which is b).")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Representation]
#v(40pt)

#only("1-")[#align(center)[
2D Vector: $vec(v) = (v_x, v_y)$
]]

#v(20pt)

#only("2-")[#align(center)[
3D Vector: $vec(w) = (w_x, w_y, w_z)$
]]

#v(40pt)

#only("3-")[
Examples:
- 2D position vector: $vec(p) = (3, 4)$
- 3D velocity vector: $vec(v) = (2, -1, 5)$
]

#only("1")[#voiceover("Let's visualize how vectors are represented. In two-dimensional space, a vector v is typically written as an ordered pair of numbers.")]

#only("2")[#voiceover("Similarly, in three-dimensional space, a vector w is represented by an ordered triple of numbers.")]

#only("3")[#voiceover("For example, a two-dimensional position vector might be represented as (3, 4), meaning 3 units in the x-direction and 4 units in the y-direction. A three-dimensional velocity vector could be (2, -1, 5), representing 2 units in the x-direction, -1 in the y-direction, and 5 in the z-direction.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Visualization]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Origin
ax.scatter(0, 0, 0, color='k', s=100, label='Origin')

# 2D vector
ax.quiver(0, 0, 0, 3, 4, 0, color='r', arrow_length_ratio=0.1, label='2D Vector (3,4)')

# 3D vector
ax.quiver(0, 0, 0, 2, -1, 5, color='b', arrow_length_ratio=0.1, label='3D Vector (2,-1,5)')

ax.set_xlim([-1, 5])
ax.set_ylim([-2, 5])
ax.set_zlim([0, 6])

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

ax.legend()

plt.title('Vector Visualization')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of the vectors we just discussed. The red arrow represents our 2D position vector (3, 4), while the blue arrow shows our 3D velocity vector (2, -1, 5).")]

#only("2")[#voiceover("Notice how the 2D vector lies flat on the XY plane, while the 3D vector extends into the Z dimension as well. This illustrates why we describe vectors as multi-dimensional numbers - they can represent quantities in multiple directions simultaneously.")]

#only("3")[#voiceover("Understanding vectors as multi-dimensional numbers allows us to describe complex physical quantities like position, velocity, or force in a compact and mathematically useful way. This concept forms the foundation for many advanced topics in physics and engineering.")]
]