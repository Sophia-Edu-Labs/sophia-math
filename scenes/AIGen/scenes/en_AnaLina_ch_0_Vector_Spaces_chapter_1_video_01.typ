#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Examples of Vector Spaces]
#v(40pt)
#only("1-")[- $RR^n$: set of all $n$-tuples of real numbers 📏]
#only("1")[
#voiceover("Some common examples of vector spaces include R n, which is the set of all n-tuples of real numbers.")
]
#v(20pt)
#only("2-")[- $P$: set of all polynomials 📈]
#only("2")[
#voiceover("Another example is the set of all polynomials, denoted as P.")
]
#v(20pt)
#only("3-")[- $C$: set of all continuous functions 🌊]
#only("3")[
#voiceover("The set of all continuous functions, denoted as C, is also a vector space.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[$RR^n$]
#v(40pt)
#only("1-")[- Example: $RR^2 = \{mat(a;b) | a, b ∈ RR\}$]
#only("1")[
#voiceover("For example, R 2 is the set of all ordered pairs (a, b), where a and b are real numbers.")
]
#v(20pt)
#only("2-")[
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

# Create the plot
plt.figure(figsize=(6, 6))
plt.scatter(X, Y, color='blue', alpha=0.5)
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('$RR^2$')
plt.xlabel('x')
plt.ylabel('y')
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("2")[
#voiceover("This can be visualized as the entire 2D plane, where each point represents a vector in R 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Polynomials and Continuous Functions]
#v(40pt)
#only("1-")[- Polynomials: $a_0 + a_1 x + a_2 x^2 + ... + a_n x^n$]
#only("1")[
#voiceover("Polynomials are expressions consisting of variables and coefficients, involving only the operations of addition, subtraction, multiplication, and non-negative integer exponents.")
]
#v(20pt)
#only("2-")[- Continuous functions: no breaks or gaps 📏]
#only("2")[
#voiceover("Continuous functions are functions for which small changes in the input result in small changes in the output. Their graphs can be drawn without lifting the pen from the paper.")
]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Polynomial function
def p(x):
    return 1 + 2*x - 3*x**2 + x**3

# Continuous function
def c(x):
    return np.sin(x)

# Generate points
x = np.linspace(-2, 2, 100)

# Create the plot
plt.figure(figsize=(6, 6))
plt.plot(x, p(x), color='blue', label='Polynomial')
plt.plot(x, c(x), color='red', label='Continuous Function')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('Polynomials and Continuous Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("3")[
#voiceover("Here, the blue curve represents a polynomial function, while the red curve represents a continuous function, in this case, the sine function.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- $RR^n$, polynomials, and continuous functions are vector spaces 🚀]
#only("1")[
#voiceover("In summary, R n, the set of all polynomials, and the set of all continuous functions are all examples of vector spaces.")
]
#v(20pt)
#only("2-")[- They satisfy the vector space axioms 📜]
#only("2")[
#voiceover("This is because they satisfy the vector space axioms, which we will explore in more detail in future lessons.")
]
]