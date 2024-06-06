#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivatives of Power Functions 🎓]

#only("1-")[- Power function: $f(x) = x^n$]
#only("2-")[- Derivative: $f'(x) = n x^(n-1)$]

#only("1")[
#voiceover("Let's recap the derivatives of power functions. A power function is a function of the form f of x equals x to the power of n, where n is a natural number.")
]

#only("2")[
#voiceover("The derivative of such a power function is given by f prime of x equals n times x to the power of n minus 1.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]

#only("1-")[Consider $f(x) = x^3$]

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3

plt.figure(figsize=(6, 4))
plt.plot(x, y, 'b-', label='$f(x) = x^3$')
plt.legend(fontsize=12)
plt.grid(True)
plt.xlim(-2, 2)
plt.ylim(-8, 8)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph of $f(x) = x^3$')

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Let's consider an example. Suppose we have the function f of x equals x cubed.")
]

#only("2")[
#voiceover("Here's the graph of this function.")
]

#only("3-")[Derivative: $f'(x) = 3 x^2$]

#only("3")[
#voiceover("To find the derivative, we apply the rule we just learned. The derivative f prime of x equals 3 times x squared.")
]

]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points 🔑]

#only("1-")[- Power function: $f(x) = x^n$ 📈]
#only("2-")[- Derivative rule: $f'(x) = n x^(n-1)$ 📏]
#only("3-")[- Example: If $f(x) = x^3$, then $f'(x) = 3 x^2$ ✅]

#only("1")[
#voiceover("To summarize, a power function is a function of the form f of x equals x to the power of n.")
]

#only("2")[
#voiceover("The derivative of such a function is given by the rule f prime of x equals n times x to the power of n minus 1.")
]

#only("3")[
#voiceover("For example, if f of x equals x cubed, then the derivative f prime of x equals 3 times x squared.")
]

]