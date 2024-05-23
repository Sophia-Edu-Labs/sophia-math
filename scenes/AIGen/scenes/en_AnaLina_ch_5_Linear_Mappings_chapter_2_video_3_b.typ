#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's go through the solution step by step.]
#only("1")[
#voiceover("That's not quite right. Let's go through the solution step by step to understand how to find the kernel of the given linear mapping.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- Linear mapping $T: R^2 \\to R^2$]
#v(20pt)
#only("2-")[- $T(mat(x; y)) = mat(x + y; x - y)$]
#only("1")[
#voiceover("We are given a linear mapping T from R squared to R squared.")
]
#only("2")[
#voiceover("The mapping T is defined by T of the vector x, y equals the vector x plus y, x minus y.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Definition of Kernel]
#v(40pt)
#only("1-")[- Kernel of $T$: set of all vectors $v$ such that $T(v) = 0$]
#v(20pt)
#only("2-")[- In other words, $"ker"(T) = \{v | T(v) = 0\}$]
#only("1")[
#voiceover("Recall that the kernel of a linear mapping T is the set of all vectors v such that T of v equals the zero vector.")
]
#only("2")[
#voiceover("In set notation, the kernel of T is written as the set of all vectors v such that T of v equals zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Finding the Kernel]
#v(40pt)
#only("1-")[- Let $v = mat(x; y)$]
#v(20pt)
#only("2-")[- $T(v) = 0$ means $mat(x + y; x - y) = mat(0; 0)$]
#v(20pt)
#only("3-")[- Solving the system of equations:]
#v(10pt)
#only("4-")[  - $x + y = 0$]
#v(10pt)
#only("5-")[  - $x - y = 0$]
#only("1")[
#voiceover("Let's consider a general vector v in R squared, which we can write as the vector x, y.")
]
#only("2")[
#voiceover("For v to be in the kernel, T of v must equal the zero vector. This means that x plus y, x minus y must equal the vector zero, zero.")
]
#only("3")[
#voiceover("We can solve this as a system of equations.")
]
#only("4")[
#voiceover("From the first component, we get the equation x plus y equals zero.")
]
#only("5")[
#voiceover("From the second component, we get the equation x minus y equals zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- Adding the equations: $2x = 0$, so $x = 0$]
#v(20pt)
#only("2-")[- Substituting $x = 0$ into either equation: $y = 0$]
#v(20pt)
#only("3-")[- Therefore, $"ker"(T) = \{mat(0; 0)\}$]
#only("1")[
#voiceover("If we add the two equations, we get two times x equals zero, which means x must be zero.")
]
#only("2")[
#voiceover("Substituting x equals zero into either of the original equations, we find that y must also be zero.")
]
#only("3")[
#voiceover("Therefore, the kernel of T consists of only the zero vector. In set notation, we write this as the kernel of T equals the set containing the vector zero, zero.")
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

# Create a grid of points
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Compute T(x, y)
U = X + Y
V = X - Y

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(X, Y, U, V, angles='xy', scale_units='xy', scale=1, color='b')
plt.scatter(0, 0, color='r', s=100, label='Kernel')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Visualization of the Linear Mapping T')
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
#voiceover("Here's a visualization of the linear mapping T. The blue arrows represent the mapping of various points in R squared. Notice that all arrows point away from the origin, except for the origin itself, which is mapped to the zero vector. This is the kernel of T, highlighted in red.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Kernel of $T$: set of vectors mapped to zero 🎯]
#v(20pt)
#only("2-")[- For $T(mat(x; y)) = mat(x + y; x - y)$, $"ker"(T) = \{mat(0; 0)\}$ ✅]
#only("1")[
#voiceover("To summarize, the kernel of a linear mapping T is the set of all vectors that are mapped to the zero vector under T.")
]
#only("2")[
#voiceover("For the given mapping T of x, y equals x plus y, x minus y, we found that the kernel of T consists only of the zero vector. Great work on solving this problem!")
]
]