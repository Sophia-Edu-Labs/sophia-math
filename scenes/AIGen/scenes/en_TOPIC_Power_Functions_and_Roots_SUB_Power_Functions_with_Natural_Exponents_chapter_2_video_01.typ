#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Even and Odd Power Functions]
#v(40pt)
#only("1-")[- $f(x) = x^n$, where $n$ is a natural number]
#v(20pt)
#only("2-")[- Even: $n = 2, 4, 6, ...$]
#v(20pt)
#only("3-")[- Odd: $n = 1, 3, 5, ...$]
#only("1")[
#voiceover("Power functions are of the form f of x equals x to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("When n is even, like 2, 4, 6, and so on, we call the power function an even power function.")
]
#only("3")[
#voiceover("When n is odd, like 1, 3, 5, and so on, we call the power function an odd power function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Symmetry of Even Power Functions]
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
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Even Power Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Even power functions, like x squared, x to the fourth, and x to the sixth, are symmetric about the y-axis. This means if you reflect the graph across the y-axis, it looks the same.")
]
]


There are no errors in the provided code, and it follows the Typst syntax correctly.]

#slide()[
#text(size: 30pt, weight: "bold")[Symmetry of Odd Power Functions]
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
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Odd Power Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Odd power functions, like x, x cubed, and x to the fifth, are symmetric about the origin. This means if you rotate the graph 180 degrees around the origin, it looks the same.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Even power functions ($n = 2, 4, 6, ...$) are symmetric about the y-axis 📈]
#v(20pt)
#only("2-")[- Odd power functions ($n = 1, 3, 5, ...$) are symmetric about the origin 🎯]
#only("1")[
#voiceover("In summary, even power functions, where the exponent is an even number, are symmetric about the y-axis.")
]
#only("2")[
#voiceover("Odd power functions, where the exponent is an odd number, are symmetric about the origin.")
]
]