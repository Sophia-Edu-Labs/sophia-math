#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
#only("1-")[- Of the form $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ is a natural number 🔢]
#v(20pt)
#only("3-")[- Examples: $f(x) = x^2$, $g(x) = x^5$]
#only("1")[
#voiceover("Power functions are functions of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("Here, n is a natural number. That means it's a positive whole number like 1, 2, 3, and so on.")
]
#only("3")[
#voiceover("Some examples of power functions are f of x equals x squared and g of x equals x to the fifth power.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(6, 6))

for n in range(1, 6):
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a graph showing several power functions. Notice how the shape changes as the exponent, n, increases.")
]
]


No corrections were needed.]

#slide()[
#text(size: 30pt, weight: "bold")[Properties]
#v(40pt)
#only("1-")[- Domain: all real numbers ℝ]
#v(20pt)
#only("2-")[- Even $n$: Symmetric about y-axis 📈]
#v(20pt)
#only("3-")[- Odd $n$: Symmetric about origin 🎯]
#only("1")[
#voiceover("Power functions are defined for all real numbers. That means their domain is the entire real line.")
]
#only("2")[
#voiceover("When n is even, the graph is symmetric about the y-axis. That means if you fold the graph along the y-axis, the two halves will match perfectly.")
]
#only("3")[
#voiceover("When n is odd, the graph is symmetric about the origin. If you rotate the graph 180 degrees around the origin, it will look exactly the same.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ is a natural number 🔢]
#v(20pt)
#only("3-")[- Domain: all real numbers ℝ]
#v(20pt)
#only("4-")[- Even $n$: Symmetric about y-axis 📈]
#v(20pt)
#only("5-")[- Odd $n$: Symmetric about origin 🎯]
#only("1")[
#voiceover("In summary, power functions are functions of the form f of x equals x to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("Remember, natural numbers are positive whole numbers like 1, 2, 3, and so on.")
]
#only("3")[
#voiceover("The domain of power functions is all real numbers.")
]
#only("4")[
#voiceover("When the exponent, n, is even, the graph is symmetric about the y-axis.")
]
#only("5")[
#voiceover("And when n is odd, the graph is symmetric about the origin.")
]
]