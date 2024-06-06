#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function]
#v(40pt)
#only("1-")[$ f(x) = x^n $]
#v(20pt)
#only("2-")[Example: $ f(x) = x^3 $]
#only("1")[
#voiceover("Let's consider a power function f of x equals x to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("For example, f of x equals x cubed is a power function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Derivative]
#v(40pt)
#only("1-")[$ f'(x) = n x^(n-1) $]
#v(20pt)
#only("2-")[Example: $ f(x) = x^3 arrow f'(x) = 3 x^2 $]
#only("1")[
#voiceover("The derivative of a power function f of x equals x to the power of n is f prime of x equals n times x to the power of n minus 1.")
]
#only("2")[
#voiceover("For instance, if f of x equals x cubed, then f prime of x equals 3 times x squared.")
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

x = np.linspace(-2, 2, 100)
y = x**3
y_deriv = 3 * x**2

fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^3$')
ax.plot(x, y_deriv, 'r--', linewidth=2, label='$f\'(x) = 3x^2$')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend(loc='upper left')
ax.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of a power function and its derivative. The blue curve represents the function f of x equals x cubed, while the red dashed curve represents its derivative f prime of x equals 3 x squared.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Proof]
#v(40pt)
#only("1-")[1. $f(x) = x^n$]
#v(20pt)
#only("2-")[2. $f(x+h) = (x+h)^n$]
#v(20pt)
#only("3-")[3. $f(x+h) = x^n + n x^(n-1) h + ... + h^n$]
#v(20pt)
#only("4-")[4. $f'(x) = lim_(h->0) (f(x+h) - f(x))/h$]
#v(20pt)
#only("5-")[5. $f'(x) = lim_(h->0) (n x^(n-1) h + ...)/h = n x^(n-1)$]
#only("1")[
#voiceover("Let's prove this formula. We start with the function f of x equals x to the power of n.")
]
#only("2")[
#voiceover("We then consider f of x plus h, which is equal to x plus h to the power of n.")
]
#only("3")[
#voiceover("Expanding this using the binomial theorem, we get x to the power of n plus n times x to the power of n minus 1 times h, plus some other terms involving h.")
]
#only("4")[
#voiceover("The derivative is defined as the limit as h approaches 0 of f of x plus h minus f of x, all divided by h.")
]
#only("5")[
#voiceover("Substituting and simplifying, most terms involving h will vanish as h approaches 0, leaving us with the limit of n times x to the power of n minus 1 times h divided by h, which is just n times x to the power of n minus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power Function: $ f(x) = x^n $]
#v(20pt)
#only("2-")[- Derivative: $ f'(x) = n x^(n-1) $]
#v(20pt)
#only("3-")[- Proof: Binomial Theorem + Definition of Derivative]
#only("1")[
#voiceover("In summary, a power function is a function of the form f of x equals x to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("The derivative of a power function f of x equals x to the power of n is f prime of x equals n times x to the power of n minus 1.")
]
#only("3")[
#voiceover("This can be proven using the binomial theorem and the definition of the derivative as a limit.")
]
]