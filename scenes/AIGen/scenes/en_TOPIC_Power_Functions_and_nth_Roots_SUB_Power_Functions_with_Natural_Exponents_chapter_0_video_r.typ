#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Power Functions with Natural Exponents 📈]
#v(40pt)
#only("1-")[- Power functions model many real-world phenomena. 🌍]
#only("2-")[- They have the form $f(x) = x^n$ where $n$ is a natural number. 🔢]
#only("3-")[- Let's review the key aspects of power functions. 🔍]
#only("1")[
#voiceover("Let's review power functions with natural exponents. Power functions are used to model many real-world phenomena.")
]
#only("2")[
#voiceover("They have the form f of x equals x raised to the power of n, where n is a natural number.")
]
#only("3")[
#voiceover("Let's review the key aspects of power functions.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
#only("1-")[
#voiceover("A power function is a function of the form f of x equals x raised to the power of n.")
]
#only("2-")[
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
y3 = x**4

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='$f(x) = x^2$', color='blue')
plt.plot(x, y2, label='$f(x) = x^3$', color='green')
plt.plot(x, y3, label='$f(x) = x^4$', color='red')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Power Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
]
#only("3")[
#voiceover("Here we see graphs of power functions with different exponents. The blue curve represents f of x equals x squared, the green curve represents f of x equals x cubed, and the red curve represents f of x equals x to the fourth power.")
]
#v(40pt)
#only("4-")[#text()[$f(x) = x^n$]]
#only("5-")[$n in NN$]
// Power function notation and natural number restriction shown from slide 4 onward

#only("5")[#voiceover("In general, a power function is written as f of x equals x raised to the power of n, where n is a natural number.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Power functions have the form $f(x) = x^n$. 🔢]
#only("2-")[- $n$ is a natural number. 🌟]
#only("3-")[- They model many real-world phenomena. 🌍]
#only("4-")[- Examples: $f(x) = x^2$, $f(x) = x^3$, $f(x) = x^4$. 📊]
#only("1")[
#voiceover("So to recap, power functions have the form f of x equals x raised to the power of n.")
]
#only("2")[
#voiceover("Here, n is a natural number.")
]
#only("3")[
#voiceover("Power functions are used to model many real-world phenomena.")
]
#only("4")[
#voiceover("Examples include f of x equals x squared, f of x equals x cubed, and f of x equals x to the fourth power.")
]
]