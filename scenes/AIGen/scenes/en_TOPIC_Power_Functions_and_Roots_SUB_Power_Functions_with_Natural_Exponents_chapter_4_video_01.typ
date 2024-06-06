#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
#only("1-")[- Of the form $f(x) = x^n$, where $n$ is a natural number 🔢]
#only("1")[
#voiceover("Let's consider power functions of the form f of x equals x to the power of n, where n is a natural number.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavior as $x arrow 0$]
#v(40pt)
#only("1-")[- As $x arrow 0$, $f(x) = x^n arrow 0$ for any natural number $n$]
#v(20pt)
#only("2-")[- Examples: $x^2 arrow 0$, $x^3 arrow 0$, $x^4 arrow 0$, as $x arrow 0$]
#only("1")[
#voiceover("We're interested in the behavior of these functions as x approaches zero. It turns out that as x approaches zero, the value of f of x equals x to the power of n also approaches zero, regardless of the value of n.")
]
#only("2")[
#voiceover("For example, x squared, x cubed, and x to the fourth power all approach zero as x approaches zero.")
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

x = np.linspace(-1, 1, 100)

plt.figure(figsize=(8, 6))

for n in range(2, 6):
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.xlim(-1, 1)
plt.ylim(-0.1, 1)
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.legend(loc='upper right')
plt.title('Power Functions as $x arrow 0$')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of several power functions as x approaches zero. Notice how all the curves approach zero as x gets closer to zero, regardless of the exponent.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- Multiplying numbers between -1 and 1 makes them smaller 📉]
#v(20pt)
#only("2-")[- Example: $0.5 multiply 0.5 = 0.25$, $0.5 multiply 0.5 multiply 0.5 = 0.125$]
#only("1")[
#voiceover("Intuitively, this makes sense. When you multiply numbers between negative one and one, the result gets smaller.")
]
#only("2")[
#voiceover("For instance, zero point five times zero point five equals zero point two five, and zero point five times zero point five times zero point five equals zero point one two five.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$, $n$ is a natural number]
#v(20pt)
#only("2-")[- As $x arrow 0$, $f(x) arrow 0$ for any natural number $n$]
#v(20pt)
#only("3-")[- Intuition: Multiplying small numbers makes them smaller]
#only("1")[
#voiceover("In summary, power functions are of the form f of x equals x to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("As x approaches zero, the value of f of x also approaches zero, regardless of the value of n.")
]
#only("3")[
#voiceover("This makes intuitive sense, as multiplying numbers between negative one and one results in smaller numbers.")
]
]