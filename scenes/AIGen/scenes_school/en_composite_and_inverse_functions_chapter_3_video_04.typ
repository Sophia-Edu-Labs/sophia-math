#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertible Functions 🔄]
#v(40pt)
#only("1-")[- One-to-one (injective) 1️⃣]
#v(20pt)
#only("2-")[- Onto (surjective) 🎯]
#v(20pt)
#only("3-")[- Bijective = one-to-one + onto 🔀]
#only("1")[
#voiceover("A function is invertible if it is both one-to-one, also known as injective, and onto, also known as surjective.")
]
#only("2")[
#voiceover("One-to-one means that each element in the codomain is mapped to by at most one element in the domain. In other words, no two elements in the domain map to the same element in the codomain.")
]
#only("3")[
#voiceover("Onto means that every element in the codomain is mapped to by at least one element in the domain. In other words, the range of the function is equal to its codomain.")
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

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# One-to-one function
x1 = np.linspace(-5, 5, 100)
y1 = x1**3

ax1.plot(x1, y1, color='blue', label='$f(x) = x^3$')
ax1.set_title('One-to-one (Injective)')
ax1.grid(True)
ax1.legend()

# Onto function
x2 = np.linspace(-5, 5, 100)
y2 = x2**2

ax2.plot(x2, y2, color='red', label='$g(x) = x^2$')
ax2.set_title('Onto (Surjective)')
ax2.grid(True)
ax2.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of a one-to-one function, represented by the blue curve, and an onto function, represented by the red curve.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Invertibility ⇆]
#v(40pt)
#only("1-")[- If $f$ is invertible, then $f^(-1)$ exists]
#v(20pt)
#only("2-")[- $f(f^(-1)(x)) = f^(-1)(f(x)) = x$]
#only("1")[
#voiceover("If a function f is invertible, then its inverse function, denoted by f to the power of negative one, exists.")
]
#only("2")[
#voiceover("The composition of a function with its inverse, in either order, results in the identity function. That is, f of f inverse of x equals f inverse of f of x equals x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎬]
#v(40pt)
#only("1-")[- Invertible = one-to-one + onto 🔀]
#v(20pt)
#only("2-")[- Each output is the result of exactly one input 1️⃣]
#v(20pt)
#only("3-")[- Inverse function exists ⇆]
#only("1")[
#voiceover("To recap, a function is invertible if it is both one-to-one and onto.")
]
#only("2")[
#voiceover("This means that each output of the function is the result of exactly one input.")
]
#only("3")[
#voiceover("If a function is invertible, then its inverse function exists, and the composition of the function with its inverse, in either order, results in the identity function.")
]
]