#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Setting Up the Integral]
#v(40pt)
#only("1-")[- Consider two functions $f(x)$ and $g(x)$]
#v(20pt)
#only("2-")[- Determine the boundaries $[a, b]$]
#v(20pt)
#only("3-")[- Ensure $f(x) >= g(x)$ on $[a, b]$]
#only("1")[
#voiceover("To set up the integral for finding the area between two curves, first consider two functions f of x and g of x.")
]
#only("2")[
#voiceover("Next, determine the boundaries of the interval over which you want to find the area. Let's call these boundaries a and b.")
]
#only("3")[
#voiceover("Ensure that f of x is greater than or equal to g of x on the interval from a to b. If not, you may need to split the interval or swap the functions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Setting Up the Integral]
#v(40pt)
#only("1-")[- The integral is given by:]
#v(20pt)
#only("2-")[$ "Area" = integral_a^b [f(x) - g(x)] dif x $]
#only("1")[
#voiceover("The integral for the area between the curves is given by:")
]
#only("2")[
#voiceover("The integral from a to b of f of x minus g of x with respect to x.")
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
def f(x):
  return x**2
def g(x):
  return x + 1
x = np.linspace(0, 2, 100)
y1 = f(x)
y2 = g(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x)')
plt.plot(x, y2, label='g(x)')
plt.fill_between(x, y1, y2, where=(x >= 0) & (x <= 1), alpha=0.3, label='Area')
plt.xlim(0, 2)
plt.ylim(0, 4)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a visualization of the area between two curves, f of x equals x squared and g of x equals x plus 1, over the interval from 0 to 1. The shaded region represents the area we want to calculate using the integral.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Consider functions $f(x)$ and $g(x)$]
#v(20pt)
#only("2-")[- Determine boundaries $[a, b]$]
#v(20pt)
#only("3-")[- Ensure $f(x) >= g(x)$ on $[a, b]$]
#v(20pt)
#only("4-")[- Set up integral: $integral_a^b [f(x) - g(x)] dif x$]
#only("1")[
#voiceover("In summary, to set up the integral for the area between two curves:")
]
#only("2")[
#voiceover("Determine the boundaries of the interval, a and b,")
]
#only("3")[
#voiceover("Ensure that f of x is greater than or equal to g of x on this interval,")
]
#only("4")[
#voiceover("And set up the integral as the integral from a to b of f of x minus g of x with respect to x.")
]
]