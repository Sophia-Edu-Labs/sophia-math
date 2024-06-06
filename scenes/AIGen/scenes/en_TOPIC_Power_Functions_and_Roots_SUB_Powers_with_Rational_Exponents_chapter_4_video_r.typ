#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents with Negative Bases 🧮]
#v(40pt)
#only("1-")[- Rational exponents: $a^(m/n) = root(n, a^m)$]
#v(20pt)
#only("2-")[- Negative bases can lead to complex numbers 🎭]
#v(20pt)
#only("3-")[- Example: $(-8)^(1/3) = -2$]
#v(20pt)
#only("4-")[- Example: $(-16)^(1/4) = 2i$]
#only("1")[
#voiceover("Let's recap rational exponents with negative bases. Recall that rational exponents are another way to represent roots, where a to the power of m over n equals the nth root of a to the power of m.")
]
#only("2")[
#voiceover("When we have a negative base and the denominator of the exponent is even, the result can be a complex number.")
]
#only("3")[
#voiceover("For example, negative 8 to the power of one-third equals negative 2, because the cube root of negative 8 is negative 2.")
]
#only("4")[
#voiceover("However, negative 16 to the power of one-fourth equals 2i, because the fourth root of negative 16 is not a real number, but a complex number.")
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

# Define the complex plane
x = np.linspace(-3, 3, 100)
y = np.linspace(-3, 3, 100)
X, Y = np.meshgrid(x, y)
Z = X + Y * 1j

# Compute (-8)^(1/3)
Z1 = np.power(-8, 1/3)

# Compute (-16)^(1/4)
Z2 = np.power(-16, 1/4)

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))
ax.contour(X, Y, np.real(Z), levels=[0], colors='black', linestyles='-', linewidths=0.5)
ax.contour(X, Y, np.imag(Z), levels=[0], colors='black', linestyles='-', linewidths=0.5)
ax.plot(np.real(Z1), np.imag(Z1), 'ro', markersize=10, label='$(-8)^{1/3} = -2$')
ax.plot(np.real(Z2), np.imag(Z2), 'bo', markersize=10, label='$(-16)^{1/4} = 2i$')
ax.legend(fontsize=12)
ax.grid(True)
ax.set_xlabel('Real')
ax.set_ylabel('Imaginary')
ax.set_title('Complex Plane')
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization on the complex plane. The red dot represents negative 8 to the power of one-third, which is a real number, negative 2. The blue dot represents negative 16 to the power of one-fourth, which is a complex number, 2i.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Rational exponents represent roots 🌱]
#v(20pt)
#only("2-")[- Negative bases with even denominators can lead to complex results 🧩]
#v(20pt)
#only("3-")[- Always consider the possibility of complex numbers when working with rational exponents and negative bases 🔍]
#only("1")[
#voiceover("In summary, rational exponents are a way to represent roots.")
]
#only("2")[
#voiceover("When we have negative bases and the denominator of the exponent is even, the result can be a complex number.")
]
#only("3")[
#voiceover("So, always keep in mind the possibility of complex numbers arising when you're working with rational exponents and negative bases.")
]
]