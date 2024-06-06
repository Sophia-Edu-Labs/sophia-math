#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
#only("1-")[- General form: $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ is a natural number 🔢]
#v(20pt)
#only("3-")[- Shape changes with $n$ 📈]
#only("1")[
#voiceover("Power functions are functions of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("In this form, n is a natural number.")
]
#only("3")[
#voiceover("The interesting thing about power functions is that their graph changes shape depending on the value of n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Odd Powers]
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
plt.plot(x, x**1, label='$x^1$')
plt.plot(x, x**3, label='$x^3$')
plt.plot(x, x**5, label='$x^5$')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Odd Power Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("When n is an odd number, like 1, 3, or 5, the graph passes through the origin and is symmetric about the origin.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Even Powers]
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
plt.plot(x, x**2, label='$x^2$')
plt.plot(x, x**4, label='$x^4$')
plt.plot(x, x**6, label='$x^6$')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Even Power Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("On the other hand, when n is an even number, like 2, 4, or 6, the graph is symmetric about the y-axis and does not pass through the origin, except at the point zero, zero.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$ 📈]
#v(20pt)
#only("2-")[- Odd $n$: symmetric about origin 🔁]
#v(20pt)
#only("3-")[- Even $n$: symmetric about y-axis 🪞]
#only("1")[
#voiceover("To summarize, power functions are of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("When n is odd, the graph is symmetric about the origin.")
]
#only("3")[
#voiceover("And when n is even, the graph is symmetric about the y-axis.")
]
]