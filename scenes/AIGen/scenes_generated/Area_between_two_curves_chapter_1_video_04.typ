#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#only("1")[
#voiceover("Let's quickly recap how to set up the integral for finding the area between two curves.")
]
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("2")[
#voiceover("To find the area between two curves, we need to determine three key elements:")
]
#only("2-")[
- Boundaries
- Order of functions
- Integral setup
]
]

#slide()[
#only("1")[
#voiceover("First, we need to find the boundaries of the region. These are the points where the two curves intersect.")
]
#text(size: 30pt, weight: "bold")[Boundaries]
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
    return x + 2

x = np.linspace(-2, 3, 100)
y1 = f(x)
y2 = g(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x^2')
plt.plot(x, y2, label='g(x) = x + 2')
plt.fill_between(x, y1, y2, where=(x >= 0) & (x <= 2), alpha=0.3, color='green')
plt.scatter([0, 2], [2, 4], color='red', label='Boundaries')
plt.xlim(-2, 3)
plt.ylim(0, 6)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]]
]
#only("2")[
#voiceover("In this example, the boundaries are at x equals 0 and x equals 2, where the curves f of x equals x squared and g of x equals x plus 2 intersect.")
]
]

#slide()[
#only("1")[
#voiceover("Next, we need to determine the order of the functions. The function on top minus the function on the bottom is the order we use in the integral.")
]
#text(size: 30pt, weight: "bold")[Order of Functions]
#v(40pt)
#only("2-")[
$f(x) = x^2$
$g(x) = x + 2$
#v(20pt)
#text(fill: aqua)[On $[0, 2]$: $f(x) ≥ g(x)$]
]
#only("2")[
#voiceover("In our example, on the interval from 0 to 2, f of x is greater than or equal to g of x. So, we will integrate f of x minus g of x.")
]
]

#slide()[
#only("1")[
#voiceover("Finally, we set up the integral. The boundaries become the limits of integration, and we integrate the difference of the functions in the correct order.")
]
#text(size: 30pt, weight: "bold")[Integral Setup]
#v(40pt)
#only("2-")[
$"Area" = ∫_0^2 [f(x) - g(x)] dif x$
#v(20pt)
$= ∫_0^2 [x^2 - (x + 2)] dif x$
]
#only("2")[
#voiceover("The integral for the area is the integral from 0 to 2 of f of x minus g of x, which simplifies to x squared minus open parenthesis x plus 2 close parenthesis dx.")
]
]

#slide()[
#only("1")[
#voiceover("In summary, to set up the integral for the area between two curves:")
]
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("2-")[
1️ Find the boundaries

2️ Determine the order of functions

3️ Set up the integral
]
#only("2")[
#voiceover("First, find the boundaries where the curves intersect. Second, determine the order of the functions, with the top function minus the bottom function. And third, set up the integral using the boundaries as limits and integrating the difference of the functions.")
]
#v(40pt)
#only("3")[
#voiceover("With these steps, you can successfully set up the integral to find the area between two curves!")
]
]