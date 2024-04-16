#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1")[
#voiceover("Let's quickly recap the key points about the area between two curves.")
]
#only("2-")[
- Represents the #text(fill: green)[region enclosed] by the functions
]
#only("2")[
#voiceover("The area between two curves represents the region that is enclosed by the two functions.")
]
#only("3-")[
- Calculated using #text(fill: blue)[integration] 🧮
]
#only("3")[
#voiceover("To calculate this area, we use integration techniques.")
]
#only("4-")[
$"Area" = integral_a^b [f(x) - g(x)] dif x$
]
#only("4")[
#voiceover("The general formula for the area is the integral from a to b of f of x minus g of x with respect to x, where f of x is greater than or equal to g of x on the interval from a to b.")
]
#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2

def g(x):
    return x

x = np.linspace(0, 1, 100)
y1 = f(x)
y2 = g(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x^2')
plt.plot(x, y2, label='g(x) = x')
plt.fill_between(x, y1, y2, where=(y1 >= y2), alpha=0.3, color='green', label='Area')
plt.xlim(0, 1)
plt.ylim(0, 1)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]]
#only("5")[
#voiceover("Here's a visual example. The green shaded region represents the area between the curves f of x equals x squared and g of x equals x over the interval from 0 to 1.")
]
]