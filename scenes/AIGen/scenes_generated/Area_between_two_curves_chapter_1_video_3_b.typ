#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
#voiceover("That's not quite right... So let's solve this step by step.")
]
#text(size: 30pt, weight: "bold")[Area Between Two Curves]

#v(40pt)
#only("2-")[
- Given: $f(x)$ and $g(x)$
- Boundaries: $a$ and $b$
]
#only("2")[
#voiceover("We are given two functions, f of x and g of x, and the boundaries a and b.")
]
]

#slide()[
#only("1")[
#voiceover("To find the area between the curves, we need to integrate the difference of the functions over the given interval.")
]
#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)
#only("2-")[
- Integrate the difference: $f(x) - g(x)$
- Over the interval: $[a, b]$
]
#only("2")[
#voiceover("We integrate the difference f of x minus g of x over the interval from a to b.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)
#only("1-")[
$"Area" = integral_a^b [f(x) - g(x)] dif x$
]
#only("1")[
#voiceover("The general formula for the area between two curves is the integral from a to b of f of x minus g of x with respect to x.")
]

#v(40pt)
#only("2-")[
📝 Note: $f(x) >= g(x)$ on $[a, b]$
]
#only("2")[
#voiceover("It's important to note that for this formula to be valid, f of x must be greater than or equal to g of x on the entire interval from a to b.")
]
]

#slide()[
#only("1")[
#voiceover("Let's visualize this concept.")
]
#text(size: 30pt, weight: "bold")[Visualization]

#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2

def g(x):
    return x + 1

x = np.linspace(0, 3, 100)
y1 = f(x)
y2 = g(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x)')
plt.plot(x, y2, label='g(x)')
plt.fill_between(x, y1, y2, where=(x >= 1) & (x <= 2), alpha=0.3, label='Area')
plt.xlim(0, 3)
plt.ylim(0, 5)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("2")[
#voiceover("In this example, the shaded region represents the area between the curves f of x equals x squared and g of x equals x plus one, over the interval from 1 to 2.")
]

#v(40pt)
#only("3-")[
$"Area" = integral_1^2 [x^2 - (x + 1)] dif x$
]
#only("3")[
#voiceover("To find the area, we would set up the integral as shown, with the boundaries 1 and 2, and evaluate it using integration techniques.")
]
]