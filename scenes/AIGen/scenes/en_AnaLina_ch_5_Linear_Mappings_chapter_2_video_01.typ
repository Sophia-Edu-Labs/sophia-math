#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kernel of a Linear Mapping]
#v(40pt)
#only("1-")[- Also known as null space 🌌]
#v(20pt)
#only("2-")[- For a linear mapping $T: V -> W$]
#v(20pt)
#only("3-")[- Set of all vectors $v$ in $V$ such that $T(v) = 0$]
#only("1")[
#voiceover("The kernel, also known as the null space, is an important concept in linear algebra related to linear mappings.")
]
#only("2")[
#voiceover("Consider a linear mapping T from a vector space V to a vector space W.")
]
#only("3")[
#voiceover("The kernel of T is the set of all vectors v in V such that T of v equals the zero vector.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the linear mapping T
def T(v):
    return np.array([v[0] + v[1], v[0] - v[1]])

# Create a grid of points
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Compute T(v) for each point
U = X + Y
V = X - Y

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(X, Y, U, V, angles='xy', scale_units='xy', scale=1, color='b', label='T(v)')
plt.quiver(0, 0, 1, -1, angles='xy', scale_units='xy', scale=1, color='r', label='Kernel')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Kernel of Linear Mapping')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the kernel. The blue arrows represent the linear mapping T applied to various vectors. The red arrow represents a vector in the kernel, which maps to the zero vector under T.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties 🧬]
#v(40pt)
#only("1-")[- Kernel is a subspace of $V$]
#v(20pt)
#only("2-")[- If $T(v) = 0$, then $v$ is in the kernel]
#v(20pt)
#only("3-")[- Dimension of $V$ = $"dim"("ker"(T)) + "dim"("im"(T))$]
#only("1")[
#voiceover("The kernel has some important properties. First, it is a subspace of the domain vector space V.")
]
#only("2")[
#voiceover("If a vector v maps to the zero vector under T, then v is in the kernel.")
]
#only("3")[
#voiceover("The dimension of V equals the sum of the dimensions of the kernel of T and the image of T. This is known as the rank-nullity theorem.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Kernel (null space) of linear mapping $T: V -> W$]
#v(20pt)
#only("2-")[- Set of all vectors $v$ in $V$ such that $T(v) = 0$]
#v(20pt)
#only("3-")[- Kernel is a subspace of $V$]
#v(20pt)
#only("4-")[- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
#only("1")[
#voiceover("In summary, the kernel, or null space, of a linear mapping T from V to W...")
]
#only("2")[
#voiceover("...is the set of all vectors v in V such that T of v equals the zero vector.")
]
#only("3")[
#voiceover("The kernel is a subspace of the domain vector space V.")
]
#only("4")[
#voiceover("And the dimension of V equals the sum of the dimensions of the kernel of T and the image of T.")
]
]