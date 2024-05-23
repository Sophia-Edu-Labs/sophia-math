#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kernel of a Linear Mapping]
#v(40pt)
The kernel of a linear mapping $T$ is the set of all vectors $v$ such that:

#v(20pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $T(v) = v$]#only("2-")[#text(fill:red)[a) $T(v) = v$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $T(v) = 0$]#only("3-")[#text(fill:green)[b) $T(v) = 0$]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $T(v) = 1$]#only("4-")[#text(fill:red)[c) $T(v) = 1$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.  
#only("-4")[d) $T(v) = -v$]#only("5-")[#text(fill:red)[d) $T(v) = -v$]]

#only("1")[#voiceover("Not quite. Let's look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect because it describes the identity mapping, not the kernel.")]
#only("3")[#voiceover("Option b) is correct. The kernel of a linear mapping $T$ is indeed the set of all vectors $v$ such that $T(v) = 0$.")]
#only("4")[#voiceover("Option c) is incorrect. There's no special significance to the vector $1$ in the definition of the kernel.")]
#only("5")[#voiceover("And option d) is also incorrect. It describes a negation mapping, not the kernel.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)

#only("1-")[
- The kernel is also known as the null space 📥
]
#v(20pt)
#only("2-")[  
- It's the preimage of the zero vector under $T$ 🎯
]
#v(20pt)  
#only("3-")[
- Formally: $"ker"(T) = \{v ∈ V | T(v) = 0\}$ ✍️
]
#v(20pt)
#only("4-")[  
- All vectors in the kernel are mapped to zero by $T$ 🗺️
]

#only("1")[#voiceover("Let's break this down step by step. The kernel is another name for the null space of a linear mapping.")]

#only("2")[#voiceover("It's the preimage of the zero vector under the mapping $T$. In other words, it's the set of all vectors that $T$ maps to zero.")]

#only("3")[#voiceover("Formally, we write the kernel of $T$ as the set of all vectors $v$ in the domain $V$ such that $T$ of $v$ equals zero.")]

#only("4")[#voiceover("So, every vector in the kernel gets mapped to the zero vector when you apply the linear mapping $T$ to it.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the linear mapping T
def T(v):
    return np.array([v[0] - v[1], v[0] + v[1]])

# Create a grid of points
x = np.linspace(-5, 5, 20)
y = np.linspace(-5, 5, 20)
X, Y = np.meshgrid(x, y)

# Apply T to each point
U = X - Y
V = X + Y

# Plot the vector field
plt.figure(figsize=(6, 6))
plt.quiver(X, Y, U, V, color='b', angles='xy', scale_units='xy', scale=1)

# Highlight the kernel (x-axis)
plt.quiver(x, np.zeros_like(x), np.zeros_like(x), np.zeros_like(x), color='r', angles='xy', scale_units='xy', scale=1, label='Kernel')

plt.grid(True)
plt.axhline(0, color='black', lw=0.5)  
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Linear Mapping and its Kernel')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#v(20pt)
#only("1-")[
- The blue arrows represent the mapping $T$ 🔵
]
#v(10pt)
#only("2-")[
- The red line is the kernel of $T$ (the x-axis) 🔴  
]

#only("1")[#voiceover("In this visualization, the blue arrows represent the linear mapping $T$ applied to each point in the plane.")]

#only("2")[#voiceover("The red line, which is the x-axis in this case, represents the kernel of $T$. All points on this line are mapped to zero by $T$.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)

#only("1-")[
- Kernel = null space 📥 = preimage of zero 🎯
]
#v(20pt)  
#only("2-")[
- $"ker"(T) = \{v ∈ V | T(v) = 0\}$ ✍️
]
#v(20pt)
#only("3-")[  
- All $v$ in kernel mapped to $0$ by $T$ 🗺️
]

#only("1")[#voiceover("To sum up, the kernel, also known as the null space, is the preimage of the zero vector under a linear mapping $T$.")]

#only("2")[#voiceover("It's formally defined as the set of all vectors $v$ in the domain $V$ such that $T$ of $v$ equals zero.")]

#only("3")[#voiceover("Every vector in the kernel is mapped to the zero vector by the linear mapping $T$. Understanding the kernel is crucial for analyzing linear mappings.")]
]