#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[
- $f(x) = e^x$
- $g(x) = ln(x)$
- Interval: $[1, e]$
]
#only("1")[
#voiceover("That's not quite correct! To find the area between the curves f of x equals e to the power of x and g of x equals the natural logarithm of x over the interval from 1 to e, we need to set up an integral.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Setting Up the Integral]
#v(40pt)
#only("1-")[
- General formula:
  - $"Area" = integral_a^b [f(x) - g(x)] dif x$
  - where $f(x) >= g(x)$ on $[a, b]$
]
#only("1")[
#voiceover("The general formula for the area between two curves is the integral from a to b of the difference between the upper function f of x and the lower function g of x with respect to x, where f of x is greater than or equal to g of x on the interval from a to b.")
]
#only("2")[
#voiceover("In this case, we have:")
]
#only("2-")[
- $f(x) = e^x$
- $g(x) = ln(x)$
- $[a, b] = [1, e]$
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Integral Expression]
#v(40pt)
#only("1")[
#voiceover("Substituting the given functions and interval into the general formula, we get:")
]
#only("1-")[
$"Area" = integral_1^e [e^x - ln(x)] dif x$
]
#only("2")[
#voiceover("This is the integral expression to find the area between the curves e to the power of x and the natural logarithm of x over the interval from 1 to e.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1")[
#voiceover("Let's visualize the curves and the area between them.")
]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(1, np.e, 100)
y1 = np.exp(x)
y2 = np.log(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='$f(x)=e^x$')
plt.plot(x, y2, label='$g(x)=ln(x)$')
plt.fill_between(x, y1, y2, where=(x >= 1) & (x <= np.e), alpha=0.3, label='Area')
plt.xlim(0, 4)
plt.ylim(0, 10)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]]
]