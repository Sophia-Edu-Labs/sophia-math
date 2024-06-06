#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Integrals of Power Functions]
#v(40pt)
#only("1-")[- For $f(x) = x^n$, where $n ≠ -1$]
#v(20pt)
#only("2-")[- $integral x^n dif x = (x^(n+1))/(n+1) + C$]
#v(20pt)
#only("3-")[- 🔑 Add 1 to the exponent, divide by new exponent]
#only("1")[
#voiceover("Let's discuss the integral of power functions. We're considering functions of the form f of x equals x to the power of n, where n is not equal to negative one.")
]
#only("2")[
#voiceover("The integral of x to the power of n with respect to x is equal to x to the power of n plus one, divided by n plus one, plus a constant of integration C.")
]
#only("3")[
#voiceover("The key steps are: add one to the exponent, then divide by this new exponent. Don't forget to add the constant of integration at the end!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: $integral x^3 dif x$]
#v(40pt)
#only("1-")[- $f(x) = x^3$, so $n = 3$]
#v(20pt)
#only("2-")[- $integral x^3 dif x = (x^(3+1))/(3+1) + C$]
#v(20pt)
#only("3-")[- $= (x^4)/4 + C$]
#only("1")[
#voiceover("Let's look at an example. Consider the integral of x cubed with respect to x. Here, f of x equals x cubed, so n equals three.")
]
#only("2")[
#voiceover("Following our formula, the integral of x cubed is equal to x to the power of three plus one, divided by three plus one, plus C.")
]
#only("3")[
#voiceover("This simplifies to x to the fourth power divided by four, plus C. That's it!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Integral]
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
y_int = 1/4 * x**4

plt.figure(figsize=(6, 4))
plt.plot(x, y, label='$f(x)=x^3$')
plt.plot(x, y_int, '--', label='$integral x^3 dif x = (x^4)/4 + C$')
plt.legend(fontsize=12)
plt.grid(True)
plt.xlim(-2, 2)
plt.ylim(-5, 5)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Function and its Integral')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph showing the function f of x equals x cubed in blue, and its integral, x to the fourth power divided by four plus C, in the dashed line. The integral is an antiderivative of the original function.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Integral of power function: $integral x^n dif x = (x^(n+1))/(n+1) + C$]
#v(20pt)
#only("2-")[- 🔑 Add 1 to exponent, divide by new exponent, add $C$]
#v(20pt)
#only("3-")[- Example: $integral x^3 dif x = (x^4)/4 + C$]
#only("1")[
#voiceover("To summarize, the integral of a power function x to the n, where n is not equal to negative one, is x to the power of n plus one, divided by n plus one, plus a constant C.")
]
#only("2")[
#voiceover("Remember the key steps: add one to the exponent, divide by the new exponent, and don't forget to add the constant of integration C at the end.")
]
#only("3")[
#voiceover("For example, the integral of x cubed is x to the fourth power divided by four, plus C.")
]
]