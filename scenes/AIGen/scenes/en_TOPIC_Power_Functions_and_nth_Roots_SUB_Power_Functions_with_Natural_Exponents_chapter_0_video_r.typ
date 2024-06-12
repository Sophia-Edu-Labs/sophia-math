#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Power Functions with Natural Exponents 🔋]
#v(40pt)
#only("1-")[- Power functions are essential in various fields. 📚]
#only("2-")[- They have the form $f(x) = x^n$ where $n$ is a natural number. 🔢]
#only("3-")[- Let's review the key concepts of power functions. 🧮]
#only("1")[
#voiceover("Let's review power functions with natural exponents. Power functions are essential in various fields, such as physics, engineering, and economics.")
]
#only("2")[
#voiceover("They have the form f of x equals x to the power of n, where n is a natural number.")
]
#only("3")[
#voiceover("Let's go over the key concepts of power functions step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
#only("1-")[- Definition: $f(x) = x^n$ where $n$ is a natural number. 🔢]
#only("2-")[- Example: $f(x) = x^2$ is a quadratic function. 📈]
#only("3-")[- Example: $f(x) = x^3$ is a cubic function. 📊]
#only("4-")[- General form: $f(x) = x^n$ for $n = 1, 2, 3, ...$]
#only("1")[
#voiceover("A power function is defined as f of x equals x to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("For example, f of x equals x squared is a quadratic function.")
]
#only("3")[
#voiceover("Another example is f of x equals x cubed, which is a cubic function.")
]
#only("4")[
#voiceover("In general, power functions have the form f of x equals x to the power of n for n equals 1, 2, 3, and so on.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation 📉]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
y1 = x**2
y2 = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label=r'$f(x) = x^2$', color='blue')
plt.plot(x, y2, label=r'$f(x) = x^3$', color='green')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graphs of Power Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()

```,
width: 360pt),
)
]
]
#only("1-")[
#voiceover("Let's look at the graphical representation of power functions. Here we have the graphs of f of x equals x squared and f of x equals x cubed.")
]
#only("2-")[
#voiceover("Notice how the shape of the graph changes as the exponent increases. For x squared, the graph is a parabola, while for x cubed, it has a different curvature.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Power functions have the form $f(x) = x^n$ where $n$ is a natural number. 🔢]
#only("2-")[- Examples include quadratic and cubic functions. 📈]
#only("3-")[- Graphs of power functions vary with different exponents. 📉]
#only("1")[
#voiceover("To summarize, power functions have the form f of x equals x to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("Examples include quadratic functions like f of x equals x squared and cubic functions like f of x equals x cubed.")
]
#only("3")[
#voiceover("The graphs of power functions vary with different exponents, showing different curvatures and shapes.")
]
]