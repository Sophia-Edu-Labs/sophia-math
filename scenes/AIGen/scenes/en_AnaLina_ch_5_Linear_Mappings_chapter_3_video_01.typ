#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping]
#v(40pt)
#only("1-")[- Function between vector spaces]
#v(20pt)
#only("2-")[- Preserves vector addition and scalar multiplication]
#only("1")[
#voiceover("A linear mapping, often denoted as T, is a function between two vector spaces, V and W.")
]
#only("2")[
#voiceover("It has the special property that it preserves vector addition and scalar multiplication.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Image of Linear Mapping]
#v(40pt)
#only("1-")[- Set of all vectors $w$ in $W$ such that $w = T(v)$ for some $v$ in $V$]
#v(20pt)
#only("2-")[- Also known as the range of $T$]
#v(20pt)
#only("3-")[- Denoted as $"im"(T)$ or $T(V)$]
#only("1")[
#voiceover("The image of a linear mapping T from V to W is the set of all vectors w in W such that w equals T of v for some vector v in V.")
]
#only("2")[
#voiceover("In other words, it's the set of all vectors in W that T maps to from V. It's also known as the range of T.")
]
#only("3")[
#voiceover("We denote the image of T as 'im' of T or simply T of V.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Let $T: ℝ^2 -> ℝ^2$ be defined by $T(mat(x;y)) = mat(x+y;x-y)$]
#v(20pt)
#only("2-")[- $T(mat(1;2)) = mat(3;-1)$, $T(mat(0;1)) = mat(1;-1)$, etc.]
#v(20pt)
#only("3-")[- $"im"(T) = \{mat(a;b) | a, b ∈ ℝ, a + b = 0\}$]
#only("1")[
#voiceover("Let's consider an example. Suppose T is a linear mapping from R 2 to R 2, defined by T of the vector x, y equals the vector x plus y, x minus y.")
]
#only("2")[
#voiceover("So for instance, T maps the vector 1, 2 to the vector 3, negative 1. It maps 0, 1 to 1, negative 1, and so on.")
]
#only("3")[
#voiceover("The image of T in this case is the set of all vectors a, b in R 2 such that a plus b equals 0.")
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

# Define the linear mapping T
def T(v):
    x, y = v
    return np.array([x + y, x - y])

# Create a grid of points in R^2
x = np.linspace(-5, 5, 20)
y = np.linspace(-5, 5, 20)
X, Y = np.meshgrid(x, y)

# Apply T to each point
Z1, Z2 = T([X, Y])

# Create the plot
plt.figure(figsize=(8, 8))
plt.quiver(X, Y, Z1, Z2, angles='xy', scale_units='xy', scale=1, color='b')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('Image of Linear Mapping T')
plt.xlabel('x')
plt.ylabel('y')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the linear mapping T. Each vector in R^2, represented by a point in the grid, is mapped by T to another vector in R^2. The blue arrows show where each vector is mapped to.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Image of linear mapping $T: V -> W$ 🖼️]
#v(20pt)
#only("2-")[- Set of all vectors $w$ in $W$ such that $w = T(v)$ for some $v$ in $V$ ✅]
#v(20pt)
#only("3-")[- Also known as range of $T$ 📏]
#only("1")[
#voiceover("To summarize, the image of a linear mapping T from V to W")
]
#only("2")[
#voiceover("is the set of all vectors w in W such that w equals T of v for some vector v in V.")
]
#only("3")[
#voiceover("It's also known as the range of T.")
]
]